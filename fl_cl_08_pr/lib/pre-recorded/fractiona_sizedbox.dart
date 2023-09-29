import 'package:flutter/material.dart';

class FractionSizeBoxExample extends StatefulWidget {
  const FractionSizeBoxExample({super.key});

  @override
  State<FractionSizeBoxExample> createState() => _FractionSizeBoxExampleState();
}

class _FractionSizeBoxExampleState extends State<FractionSizeBoxExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Fractionally Sized Box')),
      body: Center(
        child: Column(
          children: [
            Container(
              width: 150,
              height: 150,
              child: FractionallySizedBox(
                widthFactor: 2,
                heightFactor: 3,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.green,
                  alignment: Alignment.center,
                  child: const Text('100x100'),
                ),
              ),
            ),
            Container(
              width: 200,
              height: 250,
              child: FractionallySizedBox(
                widthFactor: 2,
                heightFactor: 1,
                child: Container(
                  width: 100,
                  height: 100,
                  color: Colors.pink,
                  alignment: Alignment.center,
                  child: const Text('100x100'),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
