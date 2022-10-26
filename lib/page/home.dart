// Flutter imports:
import 'package:flutter/material.dart';

// Package imports:
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

final counterProvider = StateProvider<int>((ref) => 0);

class MyHomePage extends ConsumerWidget {
  const MyHomePage({
    super.key,
    required this.title,
  });

  final String title;

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final counter = ref.watch(counterProvider);
    void multiIncrementCounter(int index) =>
        ref.read(counterProvider.notifier).update((state) => state + index);

    void resetCounter() =>
        ref.read(counterProvider.notifier).update((state) => 0);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          title,
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
              '$counter',
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
                      onPressed: () => multiIncrementCounter(index),
                    ),
                  ],
                ),
              ),
            ),
            TextButton.icon(
              onPressed: () => context.go('/test'),
              icon: const Icon(Icons.navigate_next),
              label: const Text('go test'),
            )
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: resetCounter,
        tooltip: 'Increment',
        child: const Icon(Icons.restart_alt_outlined),
      ),
    );
  }
}
