import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/excesice/Column.dart';
import 'package:mobile_exercise/weeks/excesice/LazyColumn.dart';

class Thuhanhtuan4 extends StatelessWidget {
  const Thuhanhtuan4({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Choose List Type')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const Column_h()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue, // Example color
              ),
              child: const Text('Column 1,000,000 item'),
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (_) => const LazyColumn_h()),
                );
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.red, // Example color
              ),
              child: const Text('LazyColumn 1,000,000 item'),
            ),
          ],
        ),
      ),
    );
  }
}
