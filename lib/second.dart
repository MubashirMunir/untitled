import 'package:flutter/material.dart';

class second extends StatelessWidget {
  const second({super.key});

  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as Map;
    final name = args['name'];
    final age = args['age'];

    return Scaffold(
      body: Container(
        child: Text(age),
      ),
    );
  }
}
