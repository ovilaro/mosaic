import 'package:flutter/material.dart';

class SearchTile extends StatefulWidget {
  const SearchTile({super.key, required this.index});

  final int index;

  @override
  State<SearchTile> createState() => _SearchTileState();
}

class _SearchTileState extends State<SearchTile> {
  bool fakeAdded = false;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Icon(Icons.image),
      title: Text("result ${widget.index}"),
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
