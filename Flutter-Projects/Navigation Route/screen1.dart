import 'package:fl_cl6/navigation-route/product_scree.dart';
import 'package:fl_cl6/navigation-route/screen2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class Screen1 extends StatelessWidget {
  const Screen1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Screen 1'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Screen 1'),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/screen2');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Text('2 Nav Push'),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/screen2');
                Navigator.pushReplacement(context,
                    MaterialPageRoute(builder: (context) => Screen2()));
              },
              child: Text('Nav Push'),
            ),
            ElevatedButton(
                onPressed: () {
                  Navigator.popUntil(context, (route) => true);
                },
                child: Text("Pop Util")),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/screen3');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Screen3()));
              },
              child: Text('Go to Screen 3'),
            ),
            ElevatedButton(
              onPressed: () {
                //Navigator.pushNamed(context, '/screen3');
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => ProductList1()));
              },
              child: Text('Product list'),
            ),
          ],
        ),
      ),
    );
  }
}
