import 'package:fl_cl09_project/pre-rec/style.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  List<String> todoList = ['sajjad'];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
        title: Text(
          widget.title,
        ),
      ),
      body: Center(
        child: Container(
          padding: EdgeInsets.all(16),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  flex: 10,
                  child: Row(
                    children: [
                      Expanded(
                        flex: 80,
                        child: TextFormField(
                          decoration: AppinputDecoration('List Item'),
                        ),
                      ),
                      Expanded(
                        flex: 20,
                        child: ElevatedButton(
                          style: AppButtonStyle(),
                          onPressed: () {},
                          child: Text('add'),
                        ),
                      ),
                    ],
                  )),
              Expanded(
                  flex: 90,
                  child: ListView.builder(
                    itemCount: todoList.length,
                    itemBuilder: (context, index) {
                      return Card(
                        child: sizedBox50(Row(
                          children: [
                            Expanded(
                              flex: 80,
                              child: Text(todoList[index]),
                            ),
                            Expanded(
                                flex: 20,
                                child: Padding(
                                  padding: EdgeInsets.only(left: 20),
                                  child: Icon(Icons.delete),
                                )),
                          ],
                        )),
                      );
                    },
                  )),
            ],
          ),
        ),
      ),
    );
  }
}
