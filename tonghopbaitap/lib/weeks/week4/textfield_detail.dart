import 'package:flutter/material.dart';

class TextFieldDetail extends StatefulWidget {
  const TextFieldDetail({super.key});

  @override
  State<TextFieldDetail> createState() => _TextFieldDetailState();
}

class _TextFieldDetailState extends State<TextFieldDetail> {
  String text = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('TextField')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(
                hintText: 'Thông tin nhập',
                border: OutlineInputBorder(),
              ),
              onChanged: (value) {
                setState(() {
                  text = value;
                });
              },
            ),
            const SizedBox(height: 12),
            Text(
              'Tự động cập nhật dữ liệu theo textfield',
              style: const TextStyle(color: Colors.red),
            ),
            Text(text),
          ],
        ),
      ),
    );
  }
}
