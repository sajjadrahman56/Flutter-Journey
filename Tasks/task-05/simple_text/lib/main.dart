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
  TextStyle firstLine = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.bold,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.green,
        elevation: 70,
        toolbarHeight: 100,
        centerTitle: true,
        title: Text(
          'Home',
          style: TextStyle(),
        ),
        leading: Icon(
          Icons.image,
        ),
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 20))
        ],
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'This is mod 5 Assignment',
              style: firstLine,
            ),
            SizedBox(
              height: 20,
            ),
            RichText(
                text: TextSpan(
                    text: 'My',
                    style: TextStyle(fontSize: 24, color: Colors.red),
                    children: [
                  TextSpan(
                      text: ' phone',
                      style: TextStyle(color: Colors.cyan, fontSize: 16)),
                  TextSpan(
                      text: ' name',
                      style: TextStyle(color: Colors.purple, fontSize: 20)),
                  TextSpan(
                      text: ' Vivo Y20', style: TextStyle(color: Colors.amber)),
                ]))
          ],
        ),
      ),
    );
  }
}
