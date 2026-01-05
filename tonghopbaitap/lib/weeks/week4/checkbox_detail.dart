import 'package:flutter/material.dart';

class CheckboxDetail extends StatefulWidget {
  const CheckboxDetail({super.key});

  @override
  State<CheckboxDetail> createState() => _CheckboxDetailState();
}

class _CheckboxDetailState extends State<CheckboxDetail> {
  bool checked = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Checkbox')),
      body: Center(
        child: Checkbox(
          value: checked,
          onChanged: (value) {
            setState(() => checked = value!);
          },
        ),
      ),
    );
  }
}
