import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter/widgets.dart';

class ProductList extends StatefulWidget {
  const ProductList({super.key});

  @override
  State<ProductList> createState() => _ProductListState();
}

class _ProductListState extends State<ProductList> {
  Map<int, int> cart = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: ListView.builder(
          itemCount: 10,
          itemBuilder: (context, index) {
            return ListTile(
              leading: Icon(Icons.shopping_cart),
              title: Text('Product Name ${index + 1}'),
              subtitle: Text('${(10.50 * index) + 2}'),
              trailing: Column(
                children: [
                  Text('Count : ${cart[index] ?? 0}'),
                  Container(
                    height: 30,
                    width: 100,
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          if (cart[index] == 4) {
                            showAboutDialog(context: context, children: [
                              Text('You  have boutght ${index} Products 5 !')
                            ]);
                          }

                          if (cart.containsKey(index)) {
                            cart[index] = cart[index]! + 1;
                          } else {
                            cart[index] = 1;
                          }

                          print(cart[index]);
                        });
                      },
                      child: const Text('Buy Now'),
                    ),
                  ),
                ],
              ),
            );
          }),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: Icon(Icons.shopping_cart),
      ),
    );
  }
}
