import 'package:CirclesMobile/models/message.dart';
import 'package:flutter/material.dart';

class Message extends StatelessWidget {
  final MessageModel message;
  final bool mine;

  Message(this.message, this.mine);

  @override
  Widget build(BuildContext context) {
    return new Row(
      mainAxisAlignment: mine ? MainAxisAlignment.end : MainAxisAlignment.start,
      children: <Widget>[
        new Column(
          children: <Widget>[
            // new Text(message.sender.toString()),
            new Container(
              margin: EdgeInsets.all(10),
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: mine ? Colors.grey.shade300 : Colors.teal,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Text(
                message.text,
                style: TextStyle(color: mine ? Colors.black : Colors.white),
              ),
            ),
          ],
        )
      ],
    );
  }
}
