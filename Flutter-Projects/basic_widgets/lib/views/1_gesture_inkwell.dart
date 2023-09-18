import 'package:flutter/material.dart';

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: Column(children: [
          // both GestureDetector and InkWell are used to detect gestures
          // make a text button
          // it works after single tap , double tap and long press
          //
          //
          // provide tap handler
          GestureDetector(
            onDoubleTap: () {
              print('Double Tap');
            },
            onLongPress: () {
              print('Long Press');
            },
            onTap: () {
              print('Single Tap');
            },
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 30),
            ),
          ),
          InkWell(
            onTap: () {
              print('InkWell');
            },
            child: Text(
              'Hello World',
              style: TextStyle(fontSize: 30),
            ),
          ),
        ]),
      ),
    );
  }
}
