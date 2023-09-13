import 'package:flutter/material.dart';

class ListViewMore extends StatelessWidget {
  const ListViewMore({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.red),
          Container(height: 100, width: 100, color: Colors.red),
          ElevatedButton(
            onPressed: () {},
            child: Text('Click me '),
            style: ElevatedButton.styleFrom(),
          )
        ],
      ),
    );
  }
}
