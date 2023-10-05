import 'package:fl_cl09_project/clc/class_2_li.dart';
import 'package:fl_cl09_project/water/water_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
            colorScheme: ColorScheme.fromSwatch(
          primarySwatch: Colors.blue,
        )),
        home: WaterScreen() // SumCounter() // AnimatedTextWidget()
        //HomeScreenWater() //SumCounter() // Class1() // const MyHomePage(title: 'Todo'),
        );
  }
}

class Class1 extends StatefulWidget {
  const Class1({super.key});

  @override
  State<Class1> createState() => _Class1State();
}

class _Class1State extends State<Class1> {
  static int count = 0;

  // 1

  @override
  void initState() {
    super.initState();
    print('initState');
  }

  // 2.0 [ configure related to state of widget ]
  void didUpdateWidget(covariant Class1 oldWidget) {
    print('update widget didUpdateWidget');
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

// 2
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

//3
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Counter App'),
      ),
      body: Center(
        child: Text('$count', style: Theme.of(context).textTheme.displayLarge),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(()  we can rebuild the widget by calling setState
          setState(() {
            count++;
          });
        },
        child: const Icon(Icons.add),
      ),
    );
  }

//4
  void deactivate() {
    super.deactivate();
    print('deactivate');
  }

//5
  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }
}

// in stateful widget all goest to chages , so we can use Const to avoid rebuild 
//
// If not use const then all the widget will rebuild
//
// if rebuild as a result bettery will be consume more , less performance