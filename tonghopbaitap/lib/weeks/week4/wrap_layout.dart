import 'package:flutter/material.dart';

class WrapLayout extends StatelessWidget {
  const WrapLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Wrap Layout Detail'),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Wrap(
            spacing: 8.0, // gap between adjacent chips
            runSpacing: 4.0, // gap between lines
            children: <Widget>[
              _buildChip('Apple', Colors.blue),
              _buildChip('Lemon', Colors.yellow),
              _buildChip('Orange', Colors.orange),
              _buildChip('Grape', Colors.purple),
              _buildChip('Kiwi', Colors.green),
              _buildChip('Strawberry', Colors.red),
              _buildChip('Blueberry', Colors.indigo),
              _buildChip('Raspberry', Colors.pink),
              _buildChip('Mango', Colors.amber),
              _buildChip('Pineapple', Colors.brown),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildChip(String label, Color color) {
    return Chip(
      avatar: CircleAvatar(
        backgroundColor: Colors.white,
        child: Text(label[0].toUpperCase()),
      ),
      label: Text(label),
      backgroundColor: color.withOpacity(0.7),
      labelStyle: const TextStyle(color: Colors.white),
      padding: const EdgeInsets.all(8.0),
    );
  }
}
