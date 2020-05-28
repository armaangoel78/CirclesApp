import 'package:CirclesMobile/components/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyField extends StatelessWidget {
  String name;
  bool obscured;
  OutlineInputBorder border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10),
    borderSide: BorderSide(color: Colors.transparent)
  );
  Color color;
  String value;

  MyField({this.name, this.obscured = false, Color color}) {
    if (color == null) {
      color = Colors.grey.shade300;
    }
    this.color = color;
  }

  @override
  Widget build(BuildContext covariant) {
    return new TextFormField(
      cursorColor: Colors.teal,
      obscureText: obscured,
      decoration: InputDecoration(
        enabledBorder: border, 
        focusedBorder: border,
        fillColor: color,
        filled: true,
        hintText: name, 
      ),
      onSaved: (value) {
        this.value = value;
      },
    );
  }
}