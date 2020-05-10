import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyColumn extends StatelessWidget {
  final List<Widget> children;
  final double padding;

  MyColumn(this.children, this.padding);

  @override
  Widget build(BuildContext context) {
    return new Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(children.length, (int index) {
        return new Container(
          padding: EdgeInsets.only(top: index != 0 ? padding : 0),
          child: children.elementAt(index),
        );
      }),
    );
  }
}
