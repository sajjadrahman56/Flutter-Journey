import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomeScree(),
    );
  }
}

class HomeScree extends StatelessWidget {
  const HomeScree({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('Home Screen'),
        ),
        body: Center(
          child: Scrollbar(
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
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
                Text('Hello World'),
              ],
            ),
          ),
        ));
  }
}
