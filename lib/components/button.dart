import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyButton extends StatelessWidget {
  final String text;
  final bool black;
  final Function onPressed;

  MyButton(this.text, this.black, this.onPressed);

  @override
  Widget build(BuildContext context) {
    return new MaterialButton(
      padding: EdgeInsets.all(10.0),
      child: new Text(
        text,
        style: GoogleFonts.roboto(color: black ? Colors.white : Colors.black, fontWeight: FontWeight.w200, fontSize: 30),
      ),
      color: black ? Colors.black : Colors.white,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5.0)),
      onPressed: () => onPressed,
    );
  }
}
