import 'package:flutter/material.dart';

class SnackbarDetail extends StatelessWidget {
  const SnackbarDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Snackbar Detail'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: const Text('This is a Snackbar!'),
                action: SnackBarAction(
                  label: 'Undo',
                  onPressed: () {
                    // Some code to undo the change.
                  },
                ),
              ),
            );
          },
          child: const Text('Show Snackbar'),
        ),
      ),
    );
  }
}
