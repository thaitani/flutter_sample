import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _multiIncrementCounter(int count) {
    setState(() {
      _counter = _counter + count;
    });
  }

  void _resetCount() {
    setState(() {
      _counter = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          widget.title,
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            const Text(
              'You have pushed the button this many times:',
            ),
            Text(
              '$_counter',
              style: Theme.of(context).textTheme.headline4,
            ),
            ...List.generate(
              8,
              (index) => Card(
                margin: const EdgeInsets.all(8),
                child: Row(
                  children: [
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Icon(Icons.alarm_on_sharp),
                    ),
                    Text('data${index + 1}'),
                    const Spacer(),
                    TextButton.icon(
                      icon: const Icon(Icons.add),
                      label: Text(index.toString()),
                      onPressed: () => _multiIncrementCounter(index),
                    ),
                  ],
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () => context.go('/test'),
              icon: const Icon(Icons.navigate_next),
              label: const Text("go test"),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _resetCount,
        tooltip: 'Increment',
        child: const Icon(Icons.restart_alt_outlined),
      ),
    );
  }
}
