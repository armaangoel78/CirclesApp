import 'package:CirclesMobile/components/text.dart';
import 'package:flutter/material.dart';

class MyButton extends StatelessWidget {
  String text;
  Color color;
  Color textColor;
  Function onPressed;

  MyButton({this.text = "", Color color, Color textColor, Function onPressed}) {
    if (color == null) {
      color = Colors.white;
    } 
    this.color = color;

    if (textColor == null) {
      textColor = Colors.black;
    } 
    this.textColor = textColor;

    if (onPressed == null) {
      onPressed = () {};
    } 
    this.onPressed = onPressed;
  }

  @override
  Widget build(BuildContext context) {
    return new MaterialButton(
      padding: EdgeInsets.all(10.0),
      child: MyText(text, color: textColor, size: 30, weight: FontWeight.w300,),
      color: color,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () => onPressed,
    );
  }
}
