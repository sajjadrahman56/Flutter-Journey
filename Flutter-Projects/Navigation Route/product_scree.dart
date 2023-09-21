import 'package:fl_cl6/navigation-route/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ProductList1 extends StatelessWidget {
  const ProductList1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product List'),
        ),
        body: ListView.builder(
            itemCount: 5,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Product $index"),
                subtitle: Text("This is the product number $index"),
                leading: CircleAvatar(
                  child: Text("$index"),
                ),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetails1(productionList: '$index'),
                      )).then((value) {
                    print(value);
                    showAboutDialog(
                      context: context,
                      applicationName: value,
                    );
                  });
                },
              );
            }));
  }
}

class ProductDetails1 extends StatelessWidget {
  String productionList;
  ProductDetails1({super.key, required this.productionList});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Product Details'),
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [
                Text('I am Product Details $productionList'),
                ElevatedButton(
                  onPressed: () {
                    Navigator.pop(
                        context, 'i am from product details $productionList');
                  },
                  child: Text('Back'),
                ),
              ],
            ),
          ),
        ));
  }
}
