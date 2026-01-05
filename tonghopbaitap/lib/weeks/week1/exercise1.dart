import 'package:flutter/material.dart';

class Week1Exercise1 extends StatelessWidget {
  const Week1Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Tuần 1 - Bài 1')),

      body: const Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            CircleAvatar(
              backgroundImage: AssetImage('assets/images/avt.png'),
              radius: 60,
            ),
            SizedBox(height: 8),
            Text(
              "Huỳnh Văn Tài",
              style: TextStyle(
                fontSize: 18,
                color: Color.fromARGB(255, 255, 0, 0),
              ),
            ),
            Text("Binh Thanh, HCM City"),
          ],
        ),
      ),
    );
  }
}
