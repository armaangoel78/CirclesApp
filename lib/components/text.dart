import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  String text;
  Color color;
  double size;
  FontWeight weight;

  MyText(this.text, {this.size: 20, this.weight: FontWeight.w200, Color color}) {
    if (color == null) {
      color = Colors.black;
    }
    this.color = color;
  }

  @override
  Widget build(BuildContext context) {
    return new Text(
      text,
      style: GoogleFonts.roboto(color: color, fontWeight: weight, fontSize: size),
    );
  }
}
