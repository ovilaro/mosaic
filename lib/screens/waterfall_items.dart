import 'package:flutter/material.dart';
import 'package:mosaic/models/item.dart';
import 'package:mosaic/provider/mosaic_data.dart';
import 'package:mosaic/screens/filters.dart';
import 'package:mosaic/screens/item_detail.dart';
import 'package:mosaic/screens/main_navigation_bar.dart';
import 'package:mosaic/screens/search.dart';
import 'package:mosaic/styles/app_styles.dart';
import 'package:mosaic/widgets/waterfall_item.dart';
import 'package:provider/provider.dart';
import 'package:waterfall_flow/waterfall_flow.dart';

class WaterfallItems extends StatefulWidget {
  const WaterfallItems({
    super.key,
    required this.mainAppBarType,
    this.scrollController,
  });

  final MainAppBarType mainAppBarType;
  final ScrollController? scrollController;

  @override
  State<WaterfallItems> createState() => _WaterfallItemsState();
}

class _WaterfallItemsState extends State<WaterfallItems> {
  static const double _twoPaneBreakpoint = 900;
  static const double _masterPaneWidth = 380;

  int? _selectedItemId;

  ItemStatus get _status => switch (widget.mainAppBarType) {
    MainAppBarType.notStarted => ItemStatus.notStarted,
    MainAppBarType.inProgress => ItemStatus.inProgress,
    MainAppBarType.finished => ItemStatus.finished,
    MainAppBarType.settings => ItemStatus.notStarted,
  };

  @override
  Widget build(BuildContext context) {
    final isTwoPane =
        MediaQuery.sizeOf(context).width >= _twoPaneBreakpoint;
    return Consumer<MosaicData>(
      builder: (context, mosaicData, child) {
        var items = mosaicData.getItemsWithStatus(_status);

        if (_selectedItemId != null &&
            !items.any((i) => i.id == _selectedItemId)) {
          _selectedItemId = null;
        }

        final grid = _buildGrid(mosaicData, items, isTwoPane);

        if (!isTwoPane) {
          return Scaffold(
            appBar: _buildAppBar(mosaicData),
            body: grid,
            floatingActionButton: _buildFab(),
          );
        }

        return Row(
          children: [
            SizedBox(
              width: _masterPaneWidth,
              child: Scaffold(
                appBar: _buildAppBar(mosaicData),
                body: grid,
                floatingActionButton: _buildFab(),
              ),
            ),
            VerticalDivider(width: 1),
            Expanded(child: _buildDetailPane()),
          ],
        );
      },
    );
  }

  PreferredSizeWidget _buildAppBar(MosaicData mosaicData) {
    return AppBar(
      title: Text(getAppBarTitle(widget.mainAppBarType)),
      leading: IconButton(
        onPressed: () => sortAction(context, mosaicData),
        icon: Item.getOrderIcon(
          mosaicData.getItemOrder(),
          color: AppStyles.darkGrey,
        ),
      ),
      actions: [
        IconButton(
          onPressed: () async {
            await showModalBottomSheet(
              context: context,
              builder: (BuildContext context) {
                return Filters(filterRange: FilterRange.list);
              },
              isScrollControlled: true,
              useSafeArea: true,
            );
          },
          icon: Icon(
            Icons.filter_alt,
            color: mosaicData.isAnyFilterEnabled(FilterRange.list)
                ? AppStyles.blue
                : AppStyles.darkGrey,
          ),
        ),
      ],
    );
  }

  Widget _buildGrid(
    MosaicData mosaicData,
    List<Item> items,
    bool isTwoPane,
  ) {
    return WaterfallFlow.builder(
      controller: widget.scrollController,
      itemCount: items.length,
      gridDelegate: SliverWaterfallFlowDelegateWithMaxCrossAxisExtent(
        maxCrossAxisExtent: MediaQuery.sizeOf(context).width > 600
            ? 250
            : 300,
      ),
      itemBuilder: (BuildContext context, int index) {
        final item = items[index];
        return WaterfallItem(
          item: item,
          useHero: !isTwoPane,
          isSelected: isTwoPane && _selectedItemId == item.id,
          onTap: isTwoPane
              ? () => setState(() => _selectedItemId = item.id)
              : () => Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => ItemDetail(itemId: item.id),
                      ),
                    ),
        );
      },
    );
  }

  Widget _buildDetailPane() {
    if (_selectedItemId == null) {
      return Scaffold(
        body: Center(
          child: Text('Select an item', style: AppStyles.h3),
        ),
      );
    }
    return ItemDetail(itemId: _selectedItemId!, embedded: true);
  }

  Widget _buildFab() {
    return FloatingActionButton(
      onPressed: () => Navigator.push(
        context,
        MaterialPageRoute(
          builder: (context) => Search(targetStatus: _status),
        ),
      ),
      backgroundColor: AppStyles.blue,
      child: const Icon(Icons.add, color: AppStyles.white, size: 30),
    );
  }

  String getAppBarTitle(MainAppBarType mainAppBarType) =>
      switch (mainAppBarType) {
        MainAppBarType.notStarted => "Not Started",
        MainAppBarType.inProgress => "In Progress",
        MainAppBarType.finished => "Finished",
        MainAppBarType.settings => "",
      };

  Future<void> sortAction(BuildContext context, MosaicData mosaicData) async {
    ItemOrder order = mosaicData.getItemOrder();
    ItemOrder newOrder = ItemOrder.addedAsc;
    switch (order) {
      case ItemOrder.addedAsc:
        newOrder = ItemOrder.addedDesc;
        break;
      case ItemOrder.addedDesc:
        newOrder = ItemOrder.modifiedAsc;
        break;
      case ItemOrder.modifiedAsc:
        newOrder = ItemOrder.modifiedDesc;
        break;
      case ItemOrder.modifiedDesc:
        newOrder = ItemOrder.addedAsc;
        break;
    }
    var result = await mosaicData.setItemOrder(newOrder);
    if (result) {
      var snackBar = SnackBar(
        backgroundColor: AppStyles.blue,
        content: Center(
          child: Text(
            Item.getOrderString(newOrder),
            style: AppStyles.buttonsActions.copyWith(color: AppStyles.white),
          ),
        ),
      );
      if (context.mounted) {
        ScaffoldMessenger.of(context).removeCurrentSnackBar();
        ScaffoldMessenger.of(context).showSnackBar(snackBar);
      }
    }
  }
}