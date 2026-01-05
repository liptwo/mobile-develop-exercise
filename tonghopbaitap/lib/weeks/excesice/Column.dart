import 'package:flutter/material.dart';

class Column_h extends StatelessWidget {
  const Column_h({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Column 1,000,000 items')),
      body: SingleChildScrollView(
        // Wrap in SingleChildScrollView to allow scrolling, but note this does not solve the performance issue of rendering all children at once.
        child: Column(
          children: List.generate(
            1000000,
            (index) => ListTile(title: Text('Item $index')),
          ),
        ),
      ),
    );
  }
}
