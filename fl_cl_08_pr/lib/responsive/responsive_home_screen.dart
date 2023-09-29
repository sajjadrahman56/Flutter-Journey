import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ResponsiveHome extends StatelessWidget {
  const ResponsiveHome({super.key});

  @override
  Widget build(BuildContext context) {
    //MediaQueryData mediaQueryData = MediaQuery.of(context);
    Size size = MediaQuery.sizeOf(context);

    Orientation orientation = MediaQuery.orientationOf(context);

    // Size size = MediaQuery.of(context).size;
    // print(size);
    // print(size.height);
    // print(size.width);
    // print(mediaQueryData.orientation);
    // print(size.flipped);
    // print(size.aspectRatio);
    return Scaffold(
      appBar: AppBar(
        title: Text('Responsive Home'),
      ),
      body: Center(
        child: Text('Responsive Home'),
      ),
    );
  }
}
