
import 'package:curd_fl/app/screen/product_list_screen.dart';
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key,required this.product});

  final Product product;
  @override
  Widget build(BuildContext context) {
    return ListTile(
        onTap: (){
            showDialog(
              context: context,
              builder: (builder){
                  return  AlertDialog(
                    title: Text('Select Action'),
                    content: Column(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        ListTile(
                     onTap: (){
                            print('Edit Tapped');
                          }, 
                          leading: Icon(Icons.edit),
                          title: Text('Edit'),
                        ),
                        ListTile(
                          onTap: (){
                            print('Delete Tapped');
                          },
                          leading: Icon(Icons.delete),
                          title: Text('Delete'),
                        ),
                      ],
                    ),
                  );
              }
            );
            
        },

        leading: Image.network('${product.image}',width: 80,),

        title: Text('${product.productName}'),

        subtitle: Text('${product.productCode}'),
        trailing: Text('\$${product.unitPRice}',style: Theme.of(context).textTheme.bodyMedium),
      );
  }
}