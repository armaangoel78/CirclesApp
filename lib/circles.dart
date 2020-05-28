import 'package:CirclesMobile/messages/page.dart';
import 'package:CirclesMobile/topbar/top-bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';


class Circles extends StatefulWidget {
  @override
  _CirclesState createState() => _CirclesState();
}

class _CirclesState extends State<Circles> with SingleTickerProviderStateMixin {
  TopBar bar;
  List<Widget> pages = [
    Container(),
    MessagesPage(),
    Container()
  ];
  int value = 1;

  @override
  void initState() {
    super.initState();
    bar = TopBar((int value) {
      print(value);
      setState(() {
        this.value = value;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.only(bottom:10),
        child: pages.elementAt(value),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.teal,
        fixedColor: Colors.white,
        currentIndex: value,
        onTap: (int value) {
          setState(() {
            this.value = value;
          });
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.dehaze),
            title: Text("Feed")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.message),
            title: Text("Messages")
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.videocam),
            title: Text("Room")
          ),
        ],
      ),
    );
  }
}
