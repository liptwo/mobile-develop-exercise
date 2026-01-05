import 'package:flutter/material.dart';
import 'exercise1.dart';

class Week1Menu extends StatelessWidget {
  const Week1Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tuần 1')),
      body: Center(
        child: ElevatedButton(
          child: const Text('Bài 1'),
          onPressed: () => {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (_) => const Week1Exercise1()),
            ),
          },
        ),
      ),
    );
  }
}
