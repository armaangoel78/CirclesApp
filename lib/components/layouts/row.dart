import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyRow extends StatelessWidget {
  final List<Widget> children;
  final double padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;  

  MyRow({this.children, this.padding = 0, 
    this.mainAxisAlignment: MainAxisAlignment.center, 
    this.crossAxisAlignment: CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: List.generate(children.length, (int index) {
        return new Container(
          padding: EdgeInsets.only(left: index != 0 ? padding : 0),
          child: children.elementAt(index),
        );
      }),
    );
  }
}
