import 'package:flutter/material.dart';

class TopBarOverlay extends StatelessWidget {
  bool left;
  Widget child;

  TopBarOverlay({this.child, this.left = true});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 355,
      height: 100,
      alignment: left ? Alignment.centerLeft : Alignment.centerRight,
      child: child,
    );
  }
}
