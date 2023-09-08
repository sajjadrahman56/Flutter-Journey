import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home is named prameter of MaterialApp. if small latter it is property of MaterialApp
      // if capital latter it is class of MaterialApp
      home: HomeScreen(),
      title: 'MF app',
    );
  }
}

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      appBar: AppBar(
        backgroundColor: Colors.purple,
        centerTitle: true,
        title: Text("My First App"),
        leading: Icon(
          Icons.home,
          color: Colors.amber,
          size: 40,
        ),
      ),
      body: Column(
        children: [
          Text(
            "Hello Screen 1",
            style: TextStyle(
              fontSize: 29,
              color: Colors.red,
              fontFamily: 'Lobster',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
          Text(
            "Hello Screen 2",
            style: TextStyle(
              fontSize: 29,
              color: Colors.red,
              fontFamily: 'Lobster',
              fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
