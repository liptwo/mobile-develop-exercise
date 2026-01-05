import 'package:flutter/material.dart';
import 'package:mobile_exercise/screens/home_screen.dart';
import 'package:mobile_exercise/weeks/week5/models/onboarding_model.dart';
import 'package:mobile_exercise/weeks/week5/week5.dart';
import 'package:mobile_exercise/weeks/week5/widgets/onboarding_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

final List<OnboardingModel> onboardingData = [
  OnboardingModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQXBDcrsAk5hEFGLtRi6U1AYjU0y3ePLnDMxA&s',
    title: 'Harry Porter',
    description: 'Manage your tasks easily and efficiently.',
  ),
  OnboardingModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQaulSPHTFBJCZNP2jhbG8ktpfU_2js6Ttq1w&s',
    title: 'Increase Work Effectiveness',
    description: 'Improve productivity and work quality.',
  ),
  OnboardingModel(
    image:
        'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQKzm9TzaO69V6Eq06DUEd4jIq_HKo9_xaAoA&s',
    title: 'Reminder Notification',
    description: 'Never miss an important task.',
  ),
];

class OnboardingScreen extends StatefulWidget {
  const OnboardingScreen({super.key});

  @override
  State<OnboardingScreen> createState() => _OnboardingScreenState();
}

class _OnboardingScreenState extends State<OnboardingScreen> {
  final PageController _controller = PageController();
  int currentIndex = 0;

  void nextPage() {
    if (currentIndex < onboardingData.length - 1) {
      _controller.nextPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => HomeScreen()),
      );
    }
  }

  void previousPage() {
    if (currentIndex > 0) {
      _controller.previousPage(
        duration: const Duration(milliseconds: 300),
        curve: Curves.easeIn,
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   actions: [
      //     TextButton(
      //       onPressed: () => Navigator.pushReplacement(
      //         context,
      //         MaterialPageRoute(builder: (_) => Week5MenuScreen()),
      //       ),
      //       child: const Text('Skip'),
      //     ),
      //   ],
      // ),
      body: Stack(
        children: [
          PageView.builder(
            controller: _controller,
            onPageChanged: (index) => setState(() => currentIndex = index),
            itemCount: onboardingData.length,
            itemBuilder: (_, index) =>
                OnboardingItem(model: onboardingData[index]),
          ),
          Container(
            margin: EdgeInsets.all(30),
            child: Row(
              // mainAxisAlignment: MainAxisAlignment.spaceAround,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                SmoothPageIndicator(
                  controller: _controller,
                  count: onboardingData.length,
                  effect: JumpingDotEffect(
                    dotHeight: 8,
                    dotWidth: 8,
                    spacing: 6,
                    activeDotColor: Colors.blue,
                    dotColor: Colors.grey.shade400,
                  ),
                ),
                const Spacer(flex: 1),
                TextButton(
                  onPressed: () => Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (_) => Week5MenuScreen()),
                  ),
                  child: const Text('Skip'),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(16),

        child: Row(
          children: [
            if (currentIndex > 0) ...[
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.blue,
                ),
                child: IconButton(
                  icon: Icon(Icons.arrow_back),
                  color: Colors.white,
                  onPressed: previousPage,
                ),
              ),
              const SizedBox(width: 10),
            ],

            // const Spacer(),
            Expanded(
              flex: 3,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blue,
                  foregroundColor: Colors.white,
                ),
                onPressed: nextPage,
                child: Text(
                  currentIndex == onboardingData.length - 1
                      ? 'Get Started'
                      : 'Next',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
