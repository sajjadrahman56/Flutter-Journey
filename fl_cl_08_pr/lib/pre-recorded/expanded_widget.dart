import 'package:flutter/material.dart';

class ExpandedWidget extends StatelessWidget {
  const ExpandedWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expanded')),
      body: Column(
        children: [
          Expanded(
            flex: 1,
            child: Container(
              color: Colors.black,
              alignment: Alignment.center,
              child: const Text('Expanded 1'),
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.deepOrange,
              alignment: Alignment.center,
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('A'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('B'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('C'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('D'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('E'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('F'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('G'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('B'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('C'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('D'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('E'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('F'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('G'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('H'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('I'),
                  ),
                  Padding(
                    padding: const EdgeInsets.all(18.0),
                    child: Text('J'),
                  ),
                ]),
              ),
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              color: Colors.green,
              alignment: Alignment.center,
              child: const Text('Expanded 3'),
            ),
          ),
        ],
      ),
    );
  }
}
