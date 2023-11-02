
import 'package:flutter/material.dart';

class HomeScreenDay1 extends StatefulWidget {
  const HomeScreenDay1({super.key});

  @override
  State<HomeScreenDay1> createState() => _HomeScreenDay1State();
}

class _HomeScreenDay1State extends State<HomeScreenDay1> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: const Text('Flutter Demo Home Page'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const <Widget>[
            Text(
              'You have pushed the button this many times:',
            ),
          ],
        ),
      ),
    );
  }
}