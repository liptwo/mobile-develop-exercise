import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/week5/models/onboarding_model.dart';

class OnboardingItem extends StatelessWidget {
  final OnboardingModel model;

  const OnboardingItem({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.network(model.image, height: 250),
        const SizedBox(height: 20),
        Text(
          model.title,
          style: const TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 10),
        Text(model.description, textAlign: TextAlign.center),
      ],
    );
  }
}
