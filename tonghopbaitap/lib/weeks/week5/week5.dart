import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/week5/screens/forget_password.dart';
import 'package:mobile_exercise/weeks/week5/screens/splash_screen.dart';

class Week5MenuScreen extends StatelessWidget {
  const Week5MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Weekly Assignments')),
      body: Center(
        child: Container(
          margin: EdgeInsets.all(30),
          // clipBehavior: Clip.hardEdge,
          child: Column(
            spacing: 20,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                tileColor: Colors.red,
                title: const Text('1. Week 5 - Navigation & OOP'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const SplashScreen()),
                  );
                },
              ),
              ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                ),
                tileColor: Colors.red,
                title: const Text('2. Week 5 - Data Flow'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => ForgetPassword()),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
