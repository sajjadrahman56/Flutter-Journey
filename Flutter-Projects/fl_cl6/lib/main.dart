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
        home: ThemPlay(),
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
        ));
  }
}

class ThemPlay extends StatelessWidget {
  ThemPlay({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Theme Play"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Hello World'),
            Text(
              'Hello World 2 ',
              style: Theme.of(context).textTheme.bodySmall,
            ),
            TextButton(onPressed: () {}, child: Text('Click Me')),
            ElevatedButton(onPressed: () {}, child: Text('Click Me'))
          ],
        ),
      ),
    );
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
