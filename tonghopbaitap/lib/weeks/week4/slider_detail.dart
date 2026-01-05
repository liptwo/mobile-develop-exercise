import 'package:flutter/material.dart';

class SliderDetail extends StatefulWidget {
  const SliderDetail({super.key});

  @override
  State<SliderDetail> createState() => _SliderDetailState();
}

class _SliderDetailState extends State<SliderDetail> {
  double _currentSliderValue = 20;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Slider Detail'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text('Adjust the value using the slider:'),
            Slider(
              value: _currentSliderValue,
              max: 100,
              divisions: 5,
              label: _currentSliderValue.round().toString(),
              onChanged: (double value) {
                setState(() {
                  _currentSliderValue = value;
                });
              },
            ),
            Text('Current value: ${_currentSliderValue.round()}'),
          ],
        ),
      ),
    );
  }
}
