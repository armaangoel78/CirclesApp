import 'package:CirclesMobile/components/button.dart';
import 'package:CirclesMobile/components/column.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {


  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {


  @override
  Widget build(BuildContext context) {

    return Scaffold(
      body: Center(
        
        
        child: MyColumn(
          <Widget>[
            MyButton("Login", true, null),
            MyButton("Sign up", false, null),
          ],
          20
        ),
      ),
    );
  }
}
