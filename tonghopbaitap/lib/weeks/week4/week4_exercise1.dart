import 'package:flutter/material.dart';
import 'ui_components_list.dart';

class Week4Exercise1 extends StatelessWidget {
  const Week4Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài 1')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(Icons.flutter_dash, size: 120, color: Colors.blue),
            const SizedBox(height: 24),
            const SizedBox(
              child: Text(
                'Flutter Components',
                style: TextStyle(fontSize: 24, fontWeight: FontWeight.w500),
              ),
            ),
            const SizedBox(height: 24),
            const SizedBox(
              width: 300,
              child: Text(
                'Flutter provides a variety of visual, behavioral, and motion-rich widgets that implement the Material 3 design specification. Material 3 is the default design language of Flutter, enabling you to design and build beautiful, usable apps that can adapt to any platform.',
              ),
            ),
            const SizedBox(height: 48),
            ElevatedButton(
              child: Text('More'),
              onPressed: () => {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => UIComponentsList()),
                ),
              },
            ),
          ],
        ),
      ),
    );
  }
}
