import 'package:flutter/material.dart';

class CircleButton extends StatelessWidget {
  double size;
  Color color;
  Color iconColor;
  IconData icon;
  Function onPressed;

  CircleButton({this.size = 50, this.color = Colors.teal, this.iconColor = Colors.white, this.icon = Icons.ac_unit, this.onPressed});

  @override
  Widget build(BuildContext context) {
    return new MaterialButton(
      height: size,
      color: color,
      shape: CircleBorder(),
      child: Container(
        alignment: Alignment.centerLeft,
        child: Icon(
          icon,
          color: iconColor,
        ),
      ),
      onPressed: onPressed
    );
  }
}