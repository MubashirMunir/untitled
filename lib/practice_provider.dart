import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider.dart';

class pp extends StatelessWidget {
  pp({super.key});
  double value = .7;
  @override
  Widget build(BuildContext context) {
    final provider = Provider.of<SlideProvider>(context, listen: false);
    print("ustaji");
    return Scaffold(
      body: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Consumer(
          builder: (context, value, child) => Slider(
              max: 1,
              min: 0,
              value: provider.value,
              onChanged: ((value) {
                value = value;
                provider.setValue(value);
              })),
        ),
        Container(
          height: 100,
          color: Colors.red.withOpacity(value),
        ),
        Container(
          height: 100,
          color: Colors.green.withOpacity(value),
        ),
      ]),
    );
  }
}
