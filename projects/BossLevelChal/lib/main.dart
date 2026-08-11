import 'dart:math';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blue,
        appBar: AppBar(
          title: Center(child: Text('Ask Me Anything')),
          backgroundColor: Colors.blueAccent,
        ),
body: ball(),
      ),
    ),
  );
}
class ball extends StatefulWidget {
  const ball({super.key});

  @override
  State<ball> createState() => _ballState();
}

class _ballState extends State<ball> {
  int imageNum = 1;

  void changeImage(){
    setState(() {
      imageNum = Random().nextInt(5) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: <Widget>[
          Expanded(child: 
          TextButton(onPressed: () {changeImage();} , child: Image.asset('images/ball$imageNum.png'))
          )
        ],
      ),
    );
  }
}

