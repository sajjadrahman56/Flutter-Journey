import 'package:flutter/material.dart';

class ExpandedPage extends StatefulWidget {
  const ExpandedPage({super.key});

  @override
  State<ExpandedPage> createState() => _ExpandedPageState();
}

class _ExpandedPageState extends State<ExpandedPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expanded'),
      ),
      body: Center(
        child: Stack(
          children: [
            Container(
              height: 100,
              width: 100,
              color: Colors.pink,
            ),
            Positioned(
              right: 1,
              left: 1,
              child: Container(
                height: 30,
                width: 30,
                color: Colors.black,
              ),
            )
          ],
        ),
      ),
    );
  }
}
