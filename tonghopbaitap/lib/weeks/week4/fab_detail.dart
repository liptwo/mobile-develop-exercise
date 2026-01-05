import 'package:flutter/material.dart';

class FabDetail extends StatelessWidget {
  const FabDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Floating Action Button Detail'),
      ),
      body: const Center(
        child: Text('Press the FAB to see an action!'),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Add your onPressed code here!
          ScaffoldMessenger.of(context).showSnackBar(
            const SnackBar(content: Text('FAB Pressed!')),
          );
        },
        child: const Icon(Icons.add),
      ),
    );
  }
}
