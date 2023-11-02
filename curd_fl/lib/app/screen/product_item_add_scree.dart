import 'package:flutter/material.dart';

class ProductItemScreen extends StatefulWidget {
  const ProductItemScreen({super.key});

  @override
  State<ProductItemScreen> createState() => _ProductItemScreenState();
}

class _ProductItemScreenState extends State<ProductItemScreen> {
  
  TextEditingController _titleTEController = TextEditingController();
  TextEditingController _productTEController = TextEditingController();
  TextEditingController _quantityTEController = TextEditingController();
  TextEditingController _priceTEController = TextEditingController();
  TextEditingController _totalPriceTEController = TextEditingController();
  TextEditingController _descriptionTEController = TextEditingController();
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
                controller: _titleTEController,
                decoration: InputDecoration(
                  label: Text('Titile'),
                  hintText: 'Enter Product Name',
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
                  onPressed: (){}, 
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
    _titleTEController.dispose();
    _productTEController.dispose();
    _quantityTEController.dispose();
    _priceTEController.dispose();
    _totalPriceTEController.dispose();
    _descriptionTEController.dispose();
    super.dispose();
  }
}
