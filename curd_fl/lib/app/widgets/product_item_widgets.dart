
import 'package:flutter/material.dart';

class ProductItemWidget extends StatelessWidget {
  const ProductItemWidget({super.key});

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

        leading: Image.network('https://picsum.photos/250?image=9',width: 80,),

        title: Text('Product Name'),

        subtitle: Text('Product Description'),
        trailing: Text('\$120',style: Theme.of(context).textTheme.bodyMedium),
      );
  }
}