import 'package:flutter/material.dart';

void main() {
 runApp(
      MaterialApp(
          home: Scaffold(
            backgroundColor: Colors.amberAccent,
            appBar:AppBar(
              title: Center(child: Text('I Am Rich')),
              backgroundColor: Colors.deepOrange,
            ) ,
            body: Center(
              child: Image(
                  image:NetworkImage('https://www.shutterstock.com/photos?dd_referrer=https%3A%2F%2Fwww.google.com%2F')),
            ),
          )
      )
  );
}
