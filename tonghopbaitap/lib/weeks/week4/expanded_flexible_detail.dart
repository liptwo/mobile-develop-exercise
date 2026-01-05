import 'package:flutter/material.dart';

class ExpandedFlexibleDetail extends StatelessWidget {
  const ExpandedFlexibleDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Expanded & Flexible Detail'),
      ),
      body: Center(
        child: Column(
          children: <Widget>[
            // Example 1: Expanded
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.red,
                alignment: Alignment.center,
                child: const Text('Expanded (Flex 1)', style: TextStyle(color: Colors.white)),
              ),
            ),
            // Example 2: Flexible (Fit.loose)
            Flexible(
              flex: 1,
              fit: FlexFit.loose,
              child: Container(
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text('Flexible (Loose, Flex 1)', style: TextStyle(color: Colors.white)),
              ),
            ),
            // Example 3: Flexible (Fit.tight)
            Flexible(
              flex: 1,
              fit: FlexFit.tight,
              child: Container(
                color: Colors.blue,
                alignment: Alignment.center,
                child: const Text('Flexible (Tight, Flex 1)', style: TextStyle(color: Colors.white)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
