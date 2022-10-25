import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class Test extends StatelessWidget {
  const Test({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: TextButton.icon(
          onPressed: () => context.go('/'),
          icon: const Icon(Icons.arrow_back_ios),
          label: const Text(''),
          style: ButtonStyle(
            foregroundColor: MaterialStateProperty.all<Color>(
              Theme.of(context).secondaryHeaderColor,
            ),
          ),
        ),
        backgroundColor: Theme.of(context).primaryColor,
        title: Text(
          'Test page',
          style: TextStyle(
            color: Theme.of(context).secondaryHeaderColor,
          ),
        ),
      ),
      body: const Center(
        child: Text('test'),
      ),
    );
  }
}
