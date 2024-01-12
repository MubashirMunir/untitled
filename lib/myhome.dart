import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:untitled/provider.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    print("object");

    final countProvider = Provider.of<CountProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Consumer<CountProvider>(builder: (context, value, child) {
              return Text(value.count.toString());
            }),
            ElevatedButton(
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    '/second',
                    arguments: {'name': 'Mubashir', 'age': 20},
                  );
                },
                child: Text("data"))
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () => countProvider.setCount(),
        tooltip: 'Increment',
        child: const Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
