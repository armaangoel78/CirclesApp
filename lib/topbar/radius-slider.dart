import 'package:flutter/material.dart';

class RadiusSlider extends StatefulWidget {
  int value = 0;
  Function onChanged, onChangeStart, onChangeEnd;
  RadiusSliderState state;

  RadiusSlider({this.value, this.onChanged, this.onChangeStart, this.onChangeEnd});

  @override
  RadiusSliderState createState() => RadiusSliderState(value, onChanged, onChangeStart, onChangeEnd, this);
}

class RadiusSliderState extends State<RadiusSlider> {
  int value = 0;
  final int divisions = 2;
  Function onChanged, onChangeStart, onChangeEnd;
  MyThumb thumb = MyThumb();
  Slider slider;
  double width = 0;

  RadiusSliderState(this.value, this.onChanged, this.onChangeStart, this.onChangeEnd, RadiusSlider parent) {
    parent.state = this;
    slider = getSlider(value);
  }

  @override
  void initState() {
    super.initState();
    setState(() {
      slider = getSlider(value);
    });
  }

  Slider getSlider(int value) {
    return slider = Slider(
      onChangeStart: (double value) {
        onChangeStart();
        setState(() {
          width = 5;
        });
      },
      onChangeEnd: (double value) {
        onChangeEnd();
        setState(() {
          width = 0;
        });
      },
      value: value/divisions,
      divisions: divisions, 
      onChanged: (double value) {
        int scaled = (value*divisions).round();
        onChanged(scaled);
        setState(() {
          this.slider = getSlider(scaled);
        });
      }
    );
  }

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: 0, end: width),
      duration: Duration(milliseconds: 100),
      builder: (BuildContext context, double width, Widget child) {
        return SliderTheme(
          data: SliderThemeData(
            trackHeight: width,
            activeTrackColor: Colors.white,
            inactiveTrackColor: Colors.white,
            inactiveTickMarkColor: Colors.transparent,
            activeTickMarkColor: Colors.transparent,
            overlayColor: Colors.white,
            thumbShape: thumb,
            overlayShape: RoundSliderOverlayShape(overlayRadius: 20),
          ), 
          child: slider,
        );
      }
    );
  } 
}

class MyThumb extends SliderComponentShape {
  @override
  Size getPreferredSize(bool isEnabled, bool isDiscrete) {
    return Size(15, 15);
  }

  @override
  void paint(
    PaintingContext context,
    Offset center, {
    Animation<double> activationAnimation,
    @required Animation<double> enableAnimation,
    bool isDiscrete,
    TextPainter labelPainter,
    RenderBox parentBox,
    @required SliderThemeData sliderTheme,
    TextDirection textDirection,
    double value,
    double textScaleFactor,
    Size sizeWithOverflow,
  }) {
    assert(context != null);
    assert(center != null);
    assert(enableAnimation != null);
    assert(sliderTheme != null);
    assert(sliderTheme.disabledThumbColor != null);
    assert(sliderTheme.thumbColor != null);
    assert(!sizeWithOverflow.isEmpty);

    Paint paint = Paint();
    
    context.canvas.drawCircle(center, 15, paint..color = Colors.white);
    context.canvas.drawCircle(center.translate(-2, -2), 8, paint..color = Colors.green);
    context.canvas.drawCircle(center.translate(0, 4), 6, paint..color = Colors.purple);
    context.canvas.drawCircle(center.translate(6, -2), 4, paint..color = Colors.blue);
  }
}