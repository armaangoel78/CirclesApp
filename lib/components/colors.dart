import 'package:flutter/material.dart';

class MyColors {
  // static const Color lightGrey = Colors.grey.shade200;

  static Color complementaryTextColor(Color color) {
    double averageValue = (color.red + color.green + color.blue)/3;
    return averageValue > 255/2 ? Colors.black : Colors.white;
  }
}