import 'package:flutter/material.dart';

class ProductItemShow extends StatelessWidget {
  const ProductItemShow({super.key});

  @override
  Widget build(BuildContext context) {
    return ListTile(
      onTap: () {
            showDialog(context: context,
             builder: (context){
              return AlertDialog(

                title: Text('Select Action'),
                content: Column(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    ListTile(
                      leading: Icon(Icons.edit),
                      title: Text('Edit'),
                      onTap: (){
                        print('Edited');
                      }
                    ),
                    ListTile(
                      leading: Icon(Icons.delete),
                      title: Text('Deletd'),
                      onTap: (){
                        print('Deleted');
                      }
                    
                    )
                  ],
                ),
              );
             }
             );
      },
      leading: Image.network(
        'https://cdn.shopify.com/s/files/1/0059/0630/1017/t/5/assets/keychronv1custommechanicalkeyboard27-1657706139851.jpg?v=1657706183',
        width: 80,
      ),
      title: Text('Product Name'),
      subtitle: Row(
        children: [
          Text('Product Code'),
          SizedBox(
            width: 24,
          ),
          Text('120'),
        ],
      ),
      trailing: SingleChildScrollView(
        child: Column(
          children: [Icon(Icons.add), Text('\$30'), Icon(Icons.remove)],
        ),
      ),
    );
    
  }
}
