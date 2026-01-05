import 'package:flutter/material.dart';

class LazyColumn_h extends StatelessWidget {
  const LazyColumn_h({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Lazy Column')),
      body: ListView.builder(
        itemCount: 1000000,
        itemBuilder: (context, index) =>
            ListTile(title: Text('Item $index')), // Fixed line
      ),
    );
  }
}
