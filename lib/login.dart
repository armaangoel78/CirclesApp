import 'package:CirclesMobile/components/button.dart';
import 'package:CirclesMobile/components/column.dart';
import 'package:CirclesMobile/components/text.dart';
import 'package:flutter/material.dart';
import 'dart:math';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> with SingleTickerProviderStateMixin {

  AnimationController controller;
  double paddingAdjust = 0;


  @override
  void initState() {
    super.initState();
    controller = AnimationController(vsync: this);
    controller.addListener(logoHover);
  }

  void logoHover() {
    print("hi");
    setState(() {
      paddingAdjust = sin(controller.value) * 50;
      print(paddingAdjust);
    });
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: MyColumn(
          <Widget>[
            MyText("Circles", size: 90),
            Container(
              child: Image(
                image: AssetImage("assets/logo.png"),
                width: 200,
              ),
              padding: EdgeInsets.only(top: 30 + paddingAdjust, bottom: 30 - paddingAdjust),
            ),
            MyButton("Login", true, null),
            MyButton("Sign up", false, null),
          ],
          20
        ),
      ),
    );
  }
}
