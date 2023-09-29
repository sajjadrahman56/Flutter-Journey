// aspect ratio means = high / width
import 'package:flutter/material.dart';

class AspectRatioTask extends StatefulWidget {
  const AspectRatioTask({super.key});

  @override
  State<AspectRatioTask> createState() => _AspectRatioTask();
}

class _AspectRatioTask extends State<AspectRatioTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Aspect Ratio')),
      body: Column(
        children: [
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.red,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 2 / 14,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.green,
                alignment: Alignment.center,
                child: const Text('100x100'),
              ),
            ),
          ),
          Divider(
            height: 15,
            color: Colors.pink,
          ),
          Container(
            width: double.infinity,
            height: 200,
            color: Colors.deepOrange,
            alignment: Alignment.center,
            child: AspectRatio(
              aspectRatio: 1 / 1,
              child: Container(
                width: 100,
                height: 100,
                color: Colors.black,
                alignment: Alignment.center,
                child: const Text('100x100'),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
