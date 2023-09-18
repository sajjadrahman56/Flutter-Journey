import 'package:basic_widgets/routes/routes_name.dart';
import 'package:flutter/material.dart';

class HomeScree extends StatelessWidget {
  HomeScree({super.key});
  List<String> litems = [
    "1 sajjad",
    "2 sakib",
    "Third",
    "shifa",
    "sahfat",
    "jeva",
    "4"
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home Screen'),
      ),
      body: Center(
        child: ListView.builder(
          itemCount: litems.length,
          itemBuilder: (context, index) {
            return Container(
              margin: EdgeInsets.all(10),
              height: 50,
              color: Colors.amber[600],
              child: Center(child: Text('Entry ${litems[index]}')),
            );
          },
        ),
      ),
    );
  }
}

// navigation -> one page to another page
// 1. Navigator.push(context, MaterialPageRoute(builder: (context) => ListScreen()));
// 2. Navigator.pushNamed(context, RoutesName.list);
//
// Routers package -> GetX , GoRouter , Auto Route 
//
// 