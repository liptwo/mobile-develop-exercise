import 'package:flutter/material.dart';

class ImageDetail extends StatelessWidget {
  const ImageDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Images')),
      body: ListView(
        padding: const EdgeInsets.all(16),
        children: [
          Image.network(
            'https://upload.wikimedia.org/wikipedia/commons/1/17/Google-flutter-logo.png',
          ),
          const SizedBox(height: 16),
          Image.network('https://picsum.photos/400/200'),
        ],
      ),
    );
  }
}
