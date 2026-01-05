import 'package:flutter/material.dart';

enum WhyFarther { harder, smarter, selfStarter, travelling }

class PopupMenuDetail extends StatefulWidget {
  const PopupMenuDetail({super.key});

  @override
  State<PopupMenuDetail> createState() => _PopupMenuDetailState();
}

class _PopupMenuDetailState extends State<PopupMenuDetail> {
  WhyFarther? _selection;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Popup Menu Button Detail'),
        actions: <Widget>[
          PopupMenuButton<WhyFarther>(
            onSelected: (WhyFarther result) {
              setState(() {
                _selection = result;
              });
            },
            itemBuilder: (BuildContext context) => <PopupMenuEntry<WhyFarther>>[
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.harder,
                child: Text('Working a lot harder'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.smarter,
                child: Text('Being smarter than most'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.selfStarter,
                child: Text('Being a self-starter'),
              ),
              const PopupMenuItem<WhyFarther>(
                value: WhyFarther.travelling,
                child: Text('Traveling to other continents'),
              ),
            ],
          ),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const Text('Tap the three dots icon in the app bar to show the menu.'),
            if (_selection != null)
              Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'You selected: ${_selection.toString().split('.').last}',
                  style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
                ),
              ),
          ],
        ),
      ),
    );
  }
}
