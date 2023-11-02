import 'package:flutter/material.dart';

import '../widgets/product_widget.dart';

class SelfProductScreen extends StatefulWidget {
  const SelfProductScreen({super.key});

  @override
  State<SelfProductScreen> createState() => _SelfProductScreenState();
}

class _SelfProductScreenState extends State<SelfProductScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Selft Product List'),

      ),
      body: ListView.builder(
        itemCount: 50,
        itemBuilder: (context,index){
          
          return ProductItemShow();
        },
        
        ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
            backgroundColor: Colors.deepPurple,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
            backgroundColor: Colors.deepPurple,
          ),
        ],
      )
    );
  }
}