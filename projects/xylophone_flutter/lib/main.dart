import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(backgroundColor: Colors.black, body: Xylo()),
    ),
  );
}

class Xylo extends StatefulWidget {
  const Xylo({super.key});

  @override
  State<Xylo> createState() => _XyloState();
}

class _XyloState extends State<Xylo> {

  void playSound(int noteNum) {
    final player = AudioPlayer();
    player.play(AssetSource('note$noteNum.wav'));
  }

void buildkey(String color , int noteNum){
  Expanded(
    child: TextButton(
      style: TextButton.styleFrom(
        padding: EdgeInsets.zero,
        minimumSize: Size.zero,
        tapTargetSize: MaterialTapTargetSize.shrinkWrap,
      ),
      onPressed: () {
        playSound($noteNum);
      },
      child: Container(color: Colors.),
    ),
  );
}
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          buildkey();
        buildkey();
        buildkey();
        buildkey();
         buildkey();
         buildkey();
    buildkey();
        ],
      ),
    );
  }
}
