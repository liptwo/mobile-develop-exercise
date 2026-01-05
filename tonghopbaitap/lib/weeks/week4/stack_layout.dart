import 'package:flutter/material.dart';

class StackLayout extends StatelessWidget {
  const StackLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Stack Layout')),
      body: Center(
        child: Stack(
          alignment: Alignment.center,
          children: [
            Container(width: 150, height: 150, color: Colors.blue),
            Container(width: 100, height: 100, color: Colors.orange),
          ],
        ),
      ),
    );
  }
}
