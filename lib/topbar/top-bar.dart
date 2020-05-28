import 'package:CirclesMobile/components/buttons/circle-button.dart';
import 'package:CirclesMobile/components/fields/text-field.dart';
import 'package:CirclesMobile/topbar/radius-slider.dart';
import 'package:CirclesMobile/topbar/top-bar-overlay.dart';
import 'package:flutter/material.dart';

class TopBar extends StatefulWidget {
  Function onChanged;
  TopBar(this.onChanged);
  
  @override
  TopBarState createState() => TopBarState(onChanged);
}

class TopBarState extends State<TopBar> {
  Function onChanged;
  bool sliderMode = false;
  RadiusSlider slider;
  int value = 1;

  @override
  void initState() {
    super.initState();

    slider = RadiusSlider(
      value: value,
      onChanged: (int value) {
        onChanged(value);
        setState(() { 
          this.value = value;
        });
      },
      onChangeStart: () {
        setState(() {
          sliderMode = true;
        });
      },
      onChangeEnd: () {
        setState(() {
          sliderMode = false;
        });
      },
    );
  }

  List<Widget> overlays = [
    new TopBarOverlay(
      left: false,
      child: Container(
        width: 30,
        child: CircleButton(
          size: 30,
          color: Colors.white,
          iconColor: Colors.teal,
          icon: Icons.person,
          onPressed: () {},
        ),
      )
    ),
    new TopBarOverlay(
      child: Container(width: 0, height: 0,)
    ),
    new TopBarOverlay(
      child: Container(
        width: 310,
        child: MyField(name: "Search", color: Colors.white,)
      )
    ),
  ];

  TopBarState(this.onChanged);

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.teal,
      padding: EdgeInsets.all(10),
      child: Stack(
        children: <Widget>[
          slider,
          AnimatedCrossFade(
            firstChild: overlays.elementAt(value),
            secondChild: Container(
              width: 355, 
              height: 100,
            ),
            crossFadeState: sliderMode ? CrossFadeState.showSecond : CrossFadeState.showFirst,
            duration: Duration(milliseconds: 100),
          )
        ],
      )
    );
  }
}
