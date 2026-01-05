import 'package:flutter/material.dart';

class ChipDetail extends StatefulWidget {
  const ChipDetail({super.key});

  @override
  State<ChipDetail> createState() => _ChipDetailState();
}

class _ChipDetailState extends State<ChipDetail> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Chip Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            // Basic Chip
            Chip(
              label: const Text('Basic Chip'),
              avatar: CircleAvatar(
                backgroundColor: Colors.blue.shade900,
                child: const Text('B', style: TextStyle(color: Colors.white)),
              ),
            ),
            const SizedBox(height: 20),

            // Action Chip
            ActionChip(
              avatar: const Icon(Icons.bookmark),
              label: const Text('Action Chip'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Action performed!')),
                );
              },
            ),
            const SizedBox(height: 20),

            // Input Chip
            InputChip(
              avatar: const CircleAvatar(
                backgroundColor: Colors.blue,
                child: Text('I'),
              ),
              label: const Text('Input Chip'),
              onPressed: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Input Chip pressed!')),
                );
              },
              onDeleted: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  const SnackBar(content: Text('Input Chip deleted!')),
                );
              },
            ),
            const SizedBox(height: 20),

            // Choice Chip
            ChoiceChip(
              label: const Text('Choice Chip'),
              selected: _isSelected,
              onSelected: (bool selected) {
                setState(() {
                  _isSelected = selected;
                });
              },
              selectedColor: Colors.green,
            ),
            const SizedBox(height: 20),
            Text('Choice Chip is ${_isSelected ? 'selected' : 'not selected'}'),
          ],
        ),
      ),
    );
  }
}
