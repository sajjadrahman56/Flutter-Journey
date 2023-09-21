import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Theme Play',
      theme: ThemeData(
          // primarySwatch: Colors.blue,
          // textTheme: const TextTheme(
          //   headline4: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.red,
          //   ),
          // ),
          // appBarTheme: AppBarTheme(
          //   backgroundColor: Colors.black,
          //   foregroundColor: Colors.pink,
          //   elevation: 10,
          //   centerTitle: true,
          //   titleTextStyle: TextStyle(
          //     fontSize: 24,
          //     fontWeight: FontWeight.bold,
          //     color: Colors.red,
          //   ),
          // ),
          ),
      home: ThemePlay(),
    );
  }
}

class ThemePlay extends StatelessWidget {
  const ThemePlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Theme Play'),
      ),
      body: Center(
        child: Text(
          'Hello World',
          style: Theme.of(context).textTheme.headline4,
        ),
      ),
    );
  }
}
