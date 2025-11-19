import 'package:flutter/material.dart';
import 'package:mosaic/models/igdb_game.dart';

class SearchTile extends StatefulWidget {
  const SearchTile({super.key, required this.item});

  //TODO: change for a generic item
  final IgdbGame item;

  @override
  State<SearchTile> createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  bool fakeAdded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.image),
      title: Text(widget.item.name ?? "Unnamed Item"),
      subtitle: Text("category"),
      trailing: IconButton(
        onPressed: () {
          fakeAdded = !fakeAdded;
          setState(() {});
        },
        icon: Icon(fakeAdded ? Icons.delete : Icons.add),
      ),
    );
  }
}
