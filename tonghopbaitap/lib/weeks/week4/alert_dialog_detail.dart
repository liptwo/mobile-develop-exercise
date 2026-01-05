import 'package:flutter/material.dart';

class AlertDialogDetail extends StatelessWidget {
  const AlertDialogDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Alert Dialog Detail'),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            showDialog(
              context: context,
              builder: (BuildContext context) {
                return AlertDialog(
                  title: const Text('Alert Title'),
                  content: const Text('This is the content of the alert dialog.'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the dialog
                      },
                      child: const Text('Cancel'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pop(); // Dismiss the dialog
                        ScaffoldMessenger.of(context).showSnackBar(
                          const SnackBar(content: Text('Action Confirmed!')),
                        );
                      },
                      child: const Text('Confirm'),
                    ),
                  ],
                );
              },
            );
          },
          child: const Text('Show Alert Dialog'),
        ),
      ),
    );
  }
}
