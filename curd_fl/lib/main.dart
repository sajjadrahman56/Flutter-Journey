 
import 'package:curd_fl/app/screen/product_list_screen.dart';
import 'package:flutter/material.dart';

import 'live_class/screen/product_list_screen.dart';

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
         
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: ProductListScreen()// ProductViewScreen() //SelfProductScreen() //ProductListScreen(),
    );
  }
}

 