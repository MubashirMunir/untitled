import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider.dart';

class fscreen extends StatefulWidget {
  const fscreen({super.key});

  @override
  State<fscreen> createState() => _fscreenState();
}

class _fscreenState extends State<fscreen> {
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<FavouritProvider>(context);
    return Scaffold(
      body: ListView.builder(
        itemCount: provider.selectItem.length,
        itemBuilder: (context, index) => Consumer<FavouritProvider>(
            builder: (context, value, child) => ListTile(
                onTap: () {
                  if (value.selectItem.contains(index)) {
                    value.remove(index);
                  } else {
                    value.addItem(index);
                  }
                },
                title: Text(index.toString()),
                trailing: Icon(value.selectItem.contains(index)
                    ? Icons.favorite
                    : Icons.favorite_border_outlined))),
      ),
    );
  }
}
