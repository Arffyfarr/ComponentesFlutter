import 'dart:math';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valorSlider = 20.0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Slider'),
        backgroundColor: Colors.blue,
      ),
      body: Center(
          child: Column(
        children: [
          Container(
            height: 50,
          ),
          Slider(
            value: valorSlider,
            min: 0,
            max: 100,
            inactiveColor: Colors.blue[100],
            activeColor: Colors.blue,
            //label: "$valorSlider",
            //divisions: 5,
            onChanged: (newValue) => {_sliderMobil(newValue)},
          ),
          Row(
            children: [
              Text('Bloquear slider'),
              Checkbox(
                value: true,
                checkColor: Colors.black,
                activeColor: Colors.white,
                onChanged: (bool? value) {
                  setState(() {
                    value = value!;
                  });
                },
              )
            ],
          ),
          Row(
            children: [
              Text('Bloquear slider'),
              Checkbox(
                value: false,
                onChanged: (value) {
                  if (value == false) {
                    value = true;
                  } else {
                    value = false;
                  }
                },
              )
            ],
          ),
        ],
      )),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.auto_awesome),
        onPressed: () {
          Navigator.pop(context);
        },
      ),
    );
  }

  void _sliderMobil(double newValue) {
    final random = Random();

    setState(() {
      valorSlider = newValue;
    });
  }
}
