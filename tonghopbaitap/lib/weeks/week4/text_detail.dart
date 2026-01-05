import 'package:flutter/material.dart';

class TextDetail extends StatelessWidget {
  const TextDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Text Detail')),
      body: const Center(
        child: Text.rich(
          TextSpan(
            children: [
              TextSpan(text: 'The '),
              TextSpan(text: 'quick '),
              TextSpan(
                text: 'Brown ',
                style: TextStyle(color: Colors.orange, fontSize: 24),
              ),
              TextSpan(text: 'fox jumps over the '),
              TextSpan(
                text: 'lazy',
                style: TextStyle(fontStyle: FontStyle.italic),
              ),
              TextSpan(text: ' dog.'),
            ],
          ),
          textAlign: TextAlign.center,
        ),
      ),
    );
  }
}
