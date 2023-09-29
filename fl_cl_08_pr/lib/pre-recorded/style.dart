import 'package:flutter/material.dart';

TextStyle headline(BuildContext context) {
  var width = MediaQuery.of(context).size.width;
  if (width < 600) {
    return TextStyle(
      color: Colors.black,
      fontSize: 25,
    );
  } else {
    return TextStyle(
      color: Colors.black,
      fontSize: 60,
    );
  }
}
