import 'package:flutter/material.dart';
import 'package:mobile_exercise/weeks/excesice/thuhanhtuan4.dart';
import 'package:mobile_exercise/weeks/week5/week5.dart';
import '../weeks/week1/week1_menu.dart';
import '../weeks/week3/week3_menu.dart';
import '../weeks/week4/week4_menu.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Bài tập Flutter')),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          spacing: 20,
          children: [
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  side: BorderSide(width: BorderSide.strokeAlignCenter),
                ),
                title: const Text('Tuần 1'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Week1Menu()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  side: BorderSide(width: BorderSide.strokeAlignCenter),
                ),
                title: const Text('Tuần 3'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Week3Menu()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  side: BorderSide(width: BorderSide.strokeAlignCenter),
                ),
                title: const Text('Tuần 4'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Week4Menu()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  side: BorderSide(width: BorderSide.strokeAlignCenter),
                ),
                title: const Text('Tuần 5'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Week5MenuScreen()),
                  );
                },
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: ListTile(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusGeometry.circular(20),
                  side: BorderSide(width: BorderSide.strokeAlignCenter),
                ),
                title: const Text('1,000,000'),
                trailing: const Icon(Icons.arrow_forward),
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (_) => const Thuhanhtuan4()),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
