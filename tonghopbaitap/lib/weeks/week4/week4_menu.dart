import 'package:flutter/material.dart';
import 'week4_exercise1.dart';

class Week4Menu extends StatelessWidget {
  const Week4Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tuần 4')),
      body: Center(
        child: ElevatedButton(
          child: Text('Bài 1'),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Week4Exercise1()),
            ),
          },
        ),
      ),
    );
  }
}
