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
        // child: Scrollbar(
        //     thickness: 30,
        //     child: Column(
        //       children: [
        //         ElevatedButton(onPressed: () {}, child: Text('Button 1')),
        //         _ElevatedButton(context),
        //       ],
        //     )),

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

class home extends StatelessWidget {
  const home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(child: Text('Home Screen')),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.pushNamed(context, RoutesName.list);
          },
          child: Icon(Icons.add),
        ));
  }
}
