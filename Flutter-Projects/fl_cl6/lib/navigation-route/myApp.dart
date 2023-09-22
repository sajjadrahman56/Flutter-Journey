import 'package:fl_cl6/navigation-route/screen1.dart';
import 'package:fl_cl6/navigation-route/screen2.dart';
import 'package:flutter/material.dart';

class MyApp2 extends StatelessWidget {
  const MyApp2({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      home: Screen1(),
      themeMode: ThemeMode.dark,
      darkTheme: ThemeData(
        brightness: Brightness.dark,
        appBarTheme: AppBarTheme(
          shadowColor: Colors.black,
          backgroundColor: Colors.deepOrange,
          foregroundColor: Color.fromARGB(255, 255, 255, 255),
          elevation: 5,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      theme: ThemeData(
        textTheme: TextTheme(
          // by default textTheme is follow bodyMedium

          bodyMedium: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
          bodySmall: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
          ),
        ),
        appBarTheme: AppBarTheme(
          shadowColor: Colors.black,
          backgroundColor: Colors.pink,
          foregroundColor: Colors.white,
          elevation: 5,
          centerTitle: true,
          titleTextStyle: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        primaryColor: Colors.green,
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            foregroundColor: Colors.pink,
            backgroundColor: Colors.yellow,
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            elevation: 5,
          ),
        ),
        textButtonTheme: TextButtonThemeData(
          style: TextButton.styleFrom(
            foregroundColor: Colors.deepOrange,
            backgroundColor: Color.fromARGB(255, 75, 33, 243),
            side: BorderSide(color: Colors.black, width: 2),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(8.0)),
            elevation: 5,
          ),
        ),
      ),
      initialRoute: '/screen1',
      routes: {
        '/screen1': (context) => Screen1(),
        '/screen2': (context) => Screen2(),
        '/screen3': (context) => Screen3(),
      },
    );
  }
}
