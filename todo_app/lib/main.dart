import 'package:flutter/material.dart';
import 'package:todo_app/liveclass/home_screen.dart';

void main() => runApp(TodayApp());

class TodayApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomeScreen(),
    );
  }
}

class ResponsiveLayout extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          flex: 2,
          child: Container(
            color: Colors.blue,
            child: Center(
              child: Column(
                children: [
                  Text('width : ${MediaQuery.of(context).size.width}'),
                  Text('height ${MediaQuery.of(context).size.height}'),
                  Text('w*h : ${MediaQuery.of(context).size}'),
                ],
              ),
            ),
          ),
        ),
        Expanded(
          flex: 3,
          child: SingleChildScrollView(
            child: Column(
              children: [
                Text('width : ${MediaQuery.of(context).size.width}'),
                Text('height ${MediaQuery.of(context).size.height}'),
                Text('w*h : ${MediaQuery.of(context).size}'),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: const Color.fromARGB(255, 54, 244, 120),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.05,
                  color: Colors.red,
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: const Color.fromARGB(255, 54, 244, 120),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  height: MediaQuery.of(context).size.height * 0.25,
                  color: Colors.cyan,
                ),
              ],
            ),
          ),
        ),
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.orange,
            child: Center(
              child: Column(
                children: [
                  Text('width : ${MediaQuery.of(context).size.width}'),
                  Text('height ${MediaQuery.of(context).size.height}'),
                  Text('w*h : ${MediaQuery.of(context).size}'),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
