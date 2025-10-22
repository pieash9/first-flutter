import 'package:flutter/material.dart';

TextStyle HeadLine(context) {
  var width = MediaQuery.of(context).size.width;
  if (width < 700) {
    return TextStyle(color: Colors.red, fontSize: 30);
  } else {
    return TextStyle(color: Colors.blue, fontSize: 50);
  }
}
