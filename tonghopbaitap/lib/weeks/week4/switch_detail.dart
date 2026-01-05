import 'package:flutter/material.dart';

class SwitchDetail extends StatefulWidget {
  const SwitchDetail({super.key});

  @override
  State<SwitchDetail> createState() => _SwitchDetailState();
}

class _SwitchDetailState extends State<SwitchDetail> {
  bool isOn = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Switch')),
      body: Center(
        child: Switch(
          value: isOn,
          onChanged: (value) {
            setState(() => isOn = value);
          },
        ),
      ),
    );
  }
}
