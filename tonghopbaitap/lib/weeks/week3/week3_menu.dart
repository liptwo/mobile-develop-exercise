import 'package:flutter/material.dart';
import 'exercise1.dart';
import 'exercise2/week3_exercise2.dart';
import 'exercise3/week3_exercise3.dart';

class Week3Menu extends StatelessWidget {
  const Week3Menu({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tuần 3')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              child: const Text('Bài 1'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Week3Exercise1()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Bài 2'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Week3Exercise2()),
                );
              },
            ),
            const SizedBox(height: 16),
            ElevatedButton(
              child: const Text('Bài 3'),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Week3Exercise3()),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
