import 'package:flutter/material.dart';

class ButtonDetail extends StatelessWidget {
  const ButtonDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Button')),
      body: Center(
        child: ElevatedButton(
          onPressed: () {},
          child: const Text('Elevated Button'),
        ),
      ),
    );
  }
}
