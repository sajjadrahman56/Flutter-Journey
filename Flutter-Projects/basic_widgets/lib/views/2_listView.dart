import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Scrollbar(
          thickness: 30,
          child: ListView(
            /// list of widgets
            /// automatic scrool direction/view
            ///  no main axis alignment or cross axis alignment
            ///  We can not achive the task of row and column with listview
            /// by defautl scroll direction is vertical but we can change it to horizontal
            /// we can not use listview inside listview
            ///

            children: [
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              Divider(
                color: Colors.red,
                thickness: 1,
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              ListTile(
                title: Text('User Name'),
                subtitle: Text('user@gmail.com'),
                leading: Icon(Icons.person),
                trailing: Icon(Icons.edit),
                onTap: () {
                  print('ListTile Tapped');
                },
              ),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
              Text('Hello World'),
            ],
          ),
        ));
  }
}
