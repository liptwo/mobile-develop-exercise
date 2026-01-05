import 'package:flutter/material.dart';

class ProgressIndicatorDetail extends StatelessWidget {
  const ProgressIndicatorDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Progress Indicator Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'Circular Progress Indicator:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            CircularProgressIndicator(),
            SizedBox(height: 40),
            Text(
              'Linear Progress Indicator:',
              style: TextStyle(fontSize: 18),
            ),
            SizedBox(height: 10),
            LinearProgressIndicator(
              value: 0.7, // Example value for demonstration
            ),
            SizedBox(height: 10),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: LinearProgressIndicator(), // Indeterminate
            ),
          ],
        ),
      ),
    );
  }
}
