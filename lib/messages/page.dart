import 'package:CirclesMobile/messages/message-sender.dart';
import 'package:CirclesMobile/messages/message.dart';
import 'package:CirclesMobile/models/message.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class MessagesPage extends StatefulWidget {

  @override
  MessagesPageState createState() => MessagesPageState();
}

class MessagesPageState extends State<MessagesPage> {
  List<Widget> items = [
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), false),
    Message(MessageModel.test(), true),
  ];

  ScrollController scrollController;

  @override
  void initState() {
    super.initState();
    scrollController = ScrollController(initialScrollOffset: items.length * 50.0);
  }
  
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Expanded(
          child: ListView.builder(
            itemCount: items.length,
            controller: scrollController,
            itemBuilder: (BuildContext context, int index) {
              return items.elementAt(index);
            }
          ),
        ),

        new Container(
          height: 50,
          child: new MessageSender()
        )
      ]
    );
  }
}
