import 'package:flutter/material.dart';

class Week3Exercise1 extends StatelessWidget {
  const Week3Exercise1({super.key});

  @override
  Widget build(BuildContext context) {
    // Nullable variables
    String? nullableName;
    int? nullableAge;

    return Scaffold(
      appBar: AppBar(title: const Text('Ví dụ Nullable trong Dart')),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              '1. String? nullableName = $nullableName',
              style: Theme.of(context).textTheme.titleMedium,
            ),

            const SizedBox(height: 12),

            Text(
              '2. nullableName ?? "Chưa có tên" → '
              '${nullableName ?? "Chưa có tên"}',
            ),

            const SizedBox(height: 12),

            Text('3. int? nullableAge = $nullableAge'),

            const SizedBox(height: 12),

            Text('4. Tuổi: ${nullableAge ?? 0}'),

            const Divider(height: 32),
          ],
        ),
      ),
    );
  }
}
