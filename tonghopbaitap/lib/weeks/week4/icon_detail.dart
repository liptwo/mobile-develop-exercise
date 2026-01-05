import 'package:flutter/material.dart';

class IconDetail extends StatelessWidget {
  const IconDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Icon')),
      body: const Center(
        child: Icon(Icons.flutter_dash, size: 120, color: Colors.blue),
      ),
    );
  }
}
