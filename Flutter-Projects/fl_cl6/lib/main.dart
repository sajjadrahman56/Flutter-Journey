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
        home: ProductList());
  }
}

class ProductList extends StatelessWidget {
  ProductList({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Product List"),
        ),
        body: ListView.builder(
            itemCount: 20,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text("Product $index"),
                subtitle: Text("This is the product number $index"),
                leading: CircleAvatar(
                  child: Text("$index"),
                ),
                trailing: Icon(Icons.arrow_forward_ios),
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) =>
                            ProductDetailsShowTap(productionList: '$index'),
                      )).then((value) {
                    print(value);
                  });
                },
              );
            }));
  }
}

class ProductDetailsShowTap extends StatelessWidget {
  final String
      productionList; // here productionList is required parameter , must be give it
  final double? price;
  // here price is optional parameter because we use ? mark

  ProductDetailsShowTap({super.key, required this.productionList, this.price});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("First Screen"),
        ),
        body: Center(
          child: Column(
            children: [
              Text(
                'Product number $productionList',
                style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
              ),
              ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context, 'my name $productionList');
                  },
                  child: Text("Back"))
            ],
          ),
        ));
  }
}
