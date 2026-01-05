import 'package:flutter/material.dart';

class Onclass extends StatelessWidget {
  const Onclass({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Baif tap')),
      body: Center(
        child: Column(
          children: [
            Text('My first app'),
            const SizedBox(height: 16),
            Text('Hello'),
            const SizedBox(height: 16),
            ElevatedButton(child: const Text('Say hi'), onPressed: () => {}),
          ],
        ),
      ),
    );
  }
}
