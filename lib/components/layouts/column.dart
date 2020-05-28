import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColumn extends StatelessWidget {
  final List<Widget> children;
  final double padding;
  final MainAxisAlignment mainAxisAlignment;
  final CrossAxisAlignment crossAxisAlignment;  

  MyColumn({this.children, this.padding = 0, 
    this.mainAxisAlignment: MainAxisAlignment.center, 
    this.crossAxisAlignment: CrossAxisAlignment.center});

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: mainAxisAlignment,
      crossAxisAlignment: crossAxisAlignment,
      children: List.generate(children.length, (int index) {
        return new Container(
          padding: EdgeInsets.only(top: index != 0 ? padding : 0),
          child: children.elementAt(index),
        );
      }),
    );
  }
}
