import 'package:flutter/material.dart';

InputDecoration AppinputDecoration(String labelText) {
  return InputDecoration(
    hintText: 'Insert Item',
    border: OutlineInputBorder(
      borderRadius: BorderRadius.circular(10),
    ),
    contentPadding: EdgeInsets.fromLTRB(20, 10, 10, 20),
    labelText: labelText,
  );
}

ButtonStyle AppButtonStyle() {
  return ElevatedButton.styleFrom(
      padding: EdgeInsets.all(12),
      backgroundColor: Colors.deepOrange,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ));
}

SizedBox sizedBox50(_child) {
  return SizedBox(
    height: 50,
    child: Container(
      alignment: Alignment.center,
      padding: EdgeInsets.all(10),
      child: _child,
    ),
  );
}
