import 'package:curd_fl/app/screen/product_item_add_scree.dart';
import 'package:curd_fl/app/widgets/product_item_widgets.dart';
import 'package:flutter/material.dart';
import 'package:http/http.dart' ;
import 'dart:convert';

class ProductViewScreen extends StatefulWidget {
  const ProductViewScreen({super.key});

  @override
  State<ProductViewScreen> createState() => _ProductViewScreenState();
}

class _ProductViewScreenState extends State<ProductViewScreen> {

List<Product> productList  = []; 
bool inProgress = false;
@override
void initState() {
   getProductList();
   super.initState();  
  }
   Future<void>  getProductList() async {

   inProgress = true;
    setState(() {
    });
   
    Response response = await get(
      Uri.parse('https://crud.teamrabbil.com/api/v1/ReadProduct'),
    );
    
    print(response.statusCode);
    // print(response.body);
    if (response.statusCode == 200) {
      final Map<String, dynamic> responseData = jsonDecode(response.body);
        productList.clear();
      if (responseData['status'] == 'success') {
        for (Map<String, dynamic> productJson in responseData['data']) {
          productList.add(Product(
            productJson['_id'],
            productJson['ProductName'],
            productJson['ProductCode'],
            productJson['Img'],
            productJson['UnitPrice'],
            productJson['Qty'],
            productJson['TotalPrice'],
          ));
        }
      }
    }
    print(productList.length);
    inProgress = false;
    setState(() {
    });
  }
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
      // body: inProgress
      //     ? Center(
      //         child: CircularProgressIndicator(
      //           color: Colors.deepOrange,
      //         ),
      //       )
      //     : ListView.separated(
      //         itemCount: productList.length,
      //         itemBuilder: (context, index) {
      //           return ProductItemWidget(product: productList[index]);
      //         },
      //         separatorBuilder: (_, __) => Divider(),
      //       )
      body:  FutureBuilder(
        future: getProductList(),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.done) {
            return ListView.separated(
              itemCount: productList.length,
              itemBuilder: (context, index) {
                return ProductItemWidget(product: productList[index]);
              },
              separatorBuilder: (_, __) => Divider(),
            );
          }
          return Center(
            child: CircularProgressIndicator(
              color: Colors.deepOrange,
            ),
          );
        },
      )
    );
  }
}

class Product {
  final String id;
  final String productName;
  final String productCode;
  final String image;
  final String unitPRice;
  final String quantity;
  final String totalPRice;

  Product(
    this.id,
    this.productName,
    this.productCode,
    this.image,
    this.unitPRice,
    this.quantity,
    this.totalPRice,
  );

}
 