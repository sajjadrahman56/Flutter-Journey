 
import 'package:curd_fl/app/screen/product_item_add_scree.dart';
import 'package:curd_fl/app/widgets/product_item_widgets.dart';
import 'package:flutter/material.dart';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(
        title: Text('Product View'),
        centerTitle: true,
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          print('Add Tapped more and more');
          Navigator.push(context, 
          MaterialPageRoute(builder: (context){
            return ProductItemScreen();
          }));
           
        },
        child: Icon(Icons.add),
      ),
      body: ListView.separated(
        itemCount: 5,
        itemBuilder: (context,index){
          return ProductItemWidget();
        }, 
        separatorBuilder: (_,__){
          return Divider();
        },
         )
    );
  }
}