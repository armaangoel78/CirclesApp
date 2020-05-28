import 'package:CirclesMobile/components/buttons/circle-button.dart';
import 'package:CirclesMobile/components/fields/text-field.dart';
import 'package:CirclesMobile/components/layouts/row.dart';
import 'package:flutter/material.dart';

class MessageSender extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MyRow(
      padding: 10,
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        new Container(
          width: 290,
          child: new MyField(name: "Message...")
        ),
        new Container(
          width: 50,
          child: CircleButton(
            icon: Icons.send,
            onPressed: () {},
          )
        )
      ],
    );
  }
}
