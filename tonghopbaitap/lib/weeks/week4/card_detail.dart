import 'package:flutter/material.dart';

class CardDetail extends StatelessWidget {
  const CardDetail({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Detail'),
      ),
      body: Center(
        child: Card(
          margin: const EdgeInsets.all(20),
          elevation: 10,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15.0),
          ),
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: const <Widget>[
                ListTile(
                  leading: Icon(Icons.album, size: 50),
                  title: Text(
                    'The Enchanted Nightingale',
                    style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                    'Music by Julie Gable. Lyrics by Sidney Stein.',
                    style: TextStyle(fontSize: 14),
                  ),
                ),
                Text(
                  'A card is a sheet of Material used to represent some piece of information, such as an album, a geographical location, a meal, contact details, or financial details.',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 16),
                ),
                SizedBox(height: 10),
                OverflowBar(
                  children: <Widget>[
                    ElevatedButton(
                      onPressed: null,
                      child: Text('BUY TICKETS'),
                    ),
                    ElevatedButton(
                      onPressed: null,
                      child: Text('LISTEN'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
