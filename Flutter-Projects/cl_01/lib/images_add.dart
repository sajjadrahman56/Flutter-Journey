import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScreen(),
    );
  }
}

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

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
            Row(
              children: [
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
              ],
            ),
            Column(
              children: [
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
              ],
            ),
            Row(
              children: [
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
              ],
            ),
            Image.asset(
              'images/sa1.png',
              width: 100,
              height: 80,
              fit: BoxFit.contain,
            ),
            Image.network(
              'https://picsum.photos/250?image=9',
              width: 200,
              height: 200,
              fit: BoxFit.scaleDown,
            ),
          ],
        ));
  }
}

//note : row takes full width where column take just for needed width