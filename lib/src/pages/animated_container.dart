import 'dart:math';

import 'package:flutter/material.dart';

class AnimatedContainerPage extends StatefulWidget {
  //AnimatedContainerPage({Key? key}) : super(key: key);

  @override
  _AnimatedContainerPageState createState() => _AnimatedContainerPageState();
}

class _AnimatedContainerPageState extends State<AnimatedContainerPage> {
  double _width = 50.0;
  double _height = 50.0;
  Color _color = Colors.pinkAccent.shade700;
  BorderRadiusGeometry _borderRadius = BorderRadius.circular(8.0);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Animated Container'),
      ),
      body: Center(
        child: AnimatedContainer(
          duration: Duration(seconds: 2),
          curve: Curves.easeInOutExpo,
          width: _width,
          height: _height,
          decoration: BoxDecoration(
            color: _color,
            borderRadius: _borderRadius,
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.auto_awesome),
        onPressed: _cambiarForma,
      ),
    );
  }

  void _cambiarForma() {
    final random = Random();

    setState(() {
      //_width += 50.0;
      //_height += 50.0;
      //_color = Colors.tealAccent;
      _width = random.nextInt(301).toDouble();
      _height = random.nextInt(301).toDouble();
      _color = Color.fromRGBO(
          random.nextInt(255), //red
          random.nextInt(255), //green
          random.nextInt(255), //blue
          1); //Opacity
      _borderRadius = BorderRadius.circular(random.nextInt(100).toDouble());
    });
  }
}
