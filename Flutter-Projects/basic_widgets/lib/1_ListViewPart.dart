import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: ListView(
        children: [
          _listViewBasic(
            "s1",
            'Subtitle 1',
            Colors.red,
            Icons.abc,
          ),
        ],
      ),
    );
  }
}

Widget _listViewBasic(
  String? title,
  String? subtitle,
  Color? color,
  IconData? icon,
) {
  return ListTile(
    title: Text('$title'),
    subtitle: Text('$subtitle'),
    iconColor: color,
    trailing: Icon(
      icon,
      size: 140,
    ),
    onTap: () {},
  );
}
