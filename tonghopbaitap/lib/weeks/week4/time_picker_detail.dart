import 'package:flutter/material.dart';

class TimePickerDetail extends StatefulWidget {
  const TimePickerDetail({super.key});

  @override
  State<TimePickerDetail> createState() => _TimePickerDetailState();
}

class _TimePickerDetailState extends State<TimePickerDetail> {
  TimeOfDay selectedTime = TimeOfDay.now();

  Future<void> _selectTime(BuildContext context) async {
    final TimeOfDay? picked = await showTimePicker(
      context: context,
      initialTime: selectedTime,
    );
    if (picked != null && picked != selectedTime) {
      setState(() {
        selectedTime = picked;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Time Picker Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Text(
              'Selected Time: ${selectedTime.format(context)}',
              style: const TextStyle(fontSize: 20),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () => _selectTime(context),
              child: const Text('Select Time'),
            ),
          ],
        ),
      ),
    );
  }
}
