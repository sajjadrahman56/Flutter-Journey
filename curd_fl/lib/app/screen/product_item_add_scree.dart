import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart';

class ProductItemScreen extends StatefulWidget {
  const ProductItemScreen({super.key});

  @override
  State<ProductItemScreen> createState() => _ProductItemScreenState();
}

class _ProductItemScreenState extends State<ProductItemScreen> {
  
  TextEditingController _imgTEController = TextEditingController();
  TextEditingController _productTEController = TextEditingController();
  TextEditingController _quantityTEController = TextEditingController();
  TextEditingController _priceTEController = TextEditingController();
  TextEditingController _totalPriceTEController = TextEditingController();
  TextEditingController _descriptionTEController = TextEditingController();

  Future<void> addProduct() async{
    
    final Map<String, dynamic> productJson = {
     
 
             "Img":_imgTEController.text.trim(),
 
    "ProductCode": _productTEController.text.trim() ?? 'saj29',
    "ProductName": 'sajj29',
    "Qty": _quantityTEController.text.trim() ?? '909090',
    "TotalPrice":_totalPriceTEController.text.trim() ?? '100k',
    "UnitPrice":"232323"
          // 'ProductName': ,
          // 'ProductCode': _productTEController.text,
          // 'Qty': _quantityTEController.text,
          // 'UnitPrice': _priceTEController.text,
          // 'TotalPrice': _totalPriceTEController.text,
          // 'Description': _descriptionTEController.text,
        
    };
      String path ="https://crud.teamrabbil.com/api/v1/CreateProduct";

      Response response = await post(
        Uri.parse(path),
        headers: {
          'Content-Type': 'application/json'
        },
        body: jsonEncode(
         productJson
        )

        /*
    "Img":"",
    "ProductCode":"121",
    "ProductName":"saw343",
    "Qty":"34",
    "TotalPrice":"2323232",
    "UnitPrice":"232323"
        */
      );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Product Add Screen'),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(16),
          child: Column(
            children: [
              TextFormField(
                controller: _imgTEController,
                decoration: InputDecoration(
                  label: Text('img link'),
                  hintText: 'Enter image link ',
                ),
              ),
              TextFormField(
                controller: _productTEController,
                decoration: InputDecoration(
                  label: Text('Product code'),
                  hintText: 'Enter Product Code',
                ),
              ),
              TextFormField(
                controller: _quantityTEController ,
                decoration: InputDecoration(
                  label: Text('Quantity'),
                  hintText: 'Enter Product Quantity',
                ),
              ),
              TextFormField(
                controller: _priceTEController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Price'),
                  hintText: 'Enter Product Price',
                ),
              ),
              TextFormField(
                controller: _totalPriceTEController,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Total Price'),
                  hintText: 'Total Price',
                ),
              ),
              TextFormField(
                controller: _descriptionTEController,
                maxLines: 3,
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  label: Text('Description'),
                  hintText: 'Product Description',
                ),
              ),
              SizedBox(height: 16,),

              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  
                  style: ElevatedButton.styleFrom(
                    
                    padding: EdgeInsets.all(16),
                    primary: Theme.of(context).colorScheme.primary,
                    onPrimary: Theme.of(context).colorScheme.onPrimary,
                  ),
                  onPressed: (){
                    addProduct();
                  }, 
                child: Text('Add')),
              )
            ],
          ),
        ),
      ),
    );
  }
  @override
  void dispose() {
    _imgTEController.dispose();
    _productTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
