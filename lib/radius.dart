import 'package:CirclesMobile/circles.dart';
import 'package:CirclesMobile/topbar/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class BasicRadiusPage extends StatefulWidget {
  @override
  _BasicRadiusPageState createState() => _BasicRadiusPageState();
}

class _BasicRadiusPageState extends State<BasicRadiusPage> with SingleTickerProviderStateMixin {
  TopBar bar;
  List<Widget> bodies = [
    new Container(color: Colors.red),
    new Circles(),
    new Container(color: Colors.green)
  ];
  int value = 1;

  @override
  void initState() {
    super.initState();
    bar = TopBar((int value) {
      setState(() {
        this.value = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PreferredSize(child: bar, preferredSize: Size(double.infinity, 50),),
      body: bodies.elementAt(value),
    );
  }
}
