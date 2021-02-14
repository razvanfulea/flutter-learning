import 'package:flutter/material.dart';
import 'package:audioplayers/audio_cache.dart';

void main() => runApp(XylophoneApp());

class XylophoneApp extends StatelessWidget {
  final List<Color> colors = [
    Colors.red,
    Colors.orange,
    Colors.yellow,
    Colors.green,
    Colors.blue,
    Colors.indigo,
    Colors.purple
  ];

  void playSound(int number) {
    final player = AudioCache();
    player.play('note$number.wav');
  }

  Widget buildKey({int note, Color color}) {
    return Expanded(
      child: FlatButton(
        onPressed: () => playSound(note),
        color: color,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            // children: [
            //   buildKey(note: 1, color: Colors.red),
            //   buildKey(note: 2, color: Colors.orange),
            //   buildKey(note: 3, color: Colors.yellow),
            //   buildKey(note: 4, color: Colors.green),
            //   buildKey(note: 5, color: Colors.blue),
            //   buildKey(note: 6, color: Colors.indigo),
            //   buildKey(note: 7, color: Colors.purple),
            // ],
            children: new List.generate(
              this.colors.length,
              (index) => buildKey(note: index + 1, color: colors[index]),
            ).toList(),
          ),
        ),
      ),
    );
  }
}
