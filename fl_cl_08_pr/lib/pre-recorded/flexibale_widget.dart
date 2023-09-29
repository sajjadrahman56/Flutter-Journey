import 'package:flutter/material.dart';

class FlexibleWidget extends StatelessWidget {
  FlexibleWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded')),
      body: Column(
        children: [
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.deepOrange,
              alignment: Alignment.center,
              child: const Text('Flexible 1'),
              height: 100,
              width: 150,
            ),
          ),
          Flexible(
            fit: FlexFit.loose,
            child: Container(
              color: Colors.blue,
              alignment: Alignment.center,
              child: const Text('Flexible 11'),
              height: 100,
              width: 150,
            ),
          ),
          Flexible(
            fit: FlexFit.tight,
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Expanded 3'),
              height: 100,
              width: 150,
            ),
          ),
          Container(
            color: Colors.deepOrange,
            alignment: Alignment.center,
            child: const Text('Flexible 1'),
            height: 100,
            width: 150,
          ),
        ],
      ),
    );
  }
}
