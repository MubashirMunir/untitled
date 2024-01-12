import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/favourtiscreen.dart';
import 'package:untitled/provider.dart';

class favourit extends StatefulWidget {
  const favourit({super.key});

  @override
  State<favourit> createState() => _favouritState();
}

int val = -1;

class _favouritState extends State<favourit> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          title: Text("Provider"),
          actions: [
            InkWell(
                onTap: () => Navigator.push(context,
                    MaterialPageRoute(builder: (context) => fscreen())),
                child: Icon(Icons.favorite))
          ],
        ),
        body: Column(children: [
          Radio(value: 1, groupValue: 1, onChanged: (value) {})
          // RadioListTile(
          //   value: 1,
          //   groupValue: val,
          //   onChanged: (value) {
          //     setState(() {
          //       val = value!;
          //     });
          //   },
          //   title: Text("Radio"),
          // )
          // ListView.builder(
          //   itemCount: 100,
          //   itemBuilder: (context, index) => Consumer<FavouritProvider>(
          //       builder: (context, value, child) => ListTile(
          //           onTap: () {
          //             if (value.selectItem.contains(index)) {
          //               value.remove(index);
          //             } else {
          //               value.addItem(index);
          //             }
          //           },
          //           title: Text(index.toString()),
          //           trailing: Icon(value.selectItem.contains(index)
          //               ? Icons.favorite
          //               : Icons.favorite_border_outlined))),
          // ),
        ]));
  }
}
