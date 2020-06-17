import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

Widget buildTile({int soundNumber, Color color}) {
  return Expanded(
    child: FlatButton(
      child: Center(
        child: SizedBox(
          height: 1.0,
          width: 50.0,
        ),
      ),
      color: color,
      onPressed: () {
        player(soundNumber);
      },
    ),
  );
}

void player(int soundNumber) {
  final player = AudioCache();
  player.play('note$soundNumber.wav');
}

class XylophoneApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.black,
        body: SafeArea(
          child: Column(
            children: <Widget>[
              buildTile(soundNumber: 1, color: Colors.red),
              buildTile(soundNumber: 2, color: Colors.orange),
              buildTile(soundNumber: 3, color: Colors.yellow),
              buildTile(soundNumber: 4, color: Colors.green),
              buildTile(soundNumber: 5, color: Colors.blue),
              buildTile(soundNumber: 6, color: Colors.indigo),
              buildTile(soundNumber: 7, color: Colors.purple.shade900),
            ],
          ),
        ),
      ),
    );
  }
}
