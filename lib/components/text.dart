import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyText extends StatelessWidget {
  final String text;
  final bool black;
  final double size;
  final FontWeight weight;

  MyText(this.text, {this.black: true, this.size: 20, this.weight: FontWeight.w200});

  @override
  Widget build(BuildContext context) {
    return new Text(
      text,
      style: GoogleFonts.roboto(color: black ? Colors.black : Colors.white, fontWeight: weight, fontSize: size),
    );
  }
}
