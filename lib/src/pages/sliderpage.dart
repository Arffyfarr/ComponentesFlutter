import 'dart:math';

import 'package:flutter/material.dart';

class SliderPage extends StatefulWidget {
  @override
  _SliderPageState createState() => _SliderPageState();
}

class _SliderPageState extends State<SliderPage> {
  double valorSlider = 20.0;
  bool valorbool = false;
  double altura = 200;
  double base = 200;
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
            onChanged: (newValue) => {
              if (valorbool == false)
                {
                  _sliderMobil(newValue),
                  base = (newValue * 400) / 100,
                  altura = (newValue * 400) / 100,
                }
            },
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('Bloquear slider'),
              Padding(padding: EdgeInsets.only(right: 250)),
              Checkbox(
                  value: valorbool,
                  activeColor: Colors.white,
                  checkColor: Colors.black,
                  onChanged: (bool? paco) => setState(() {
                        valorbool = paco!;
                      })),
            ],
          ),
          Row(
            children: [
              Padding(padding: EdgeInsets.only(left: 10)),
              Text('Bloquear slider'),
              Padding(padding: EdgeInsets.only(right: 240)),
              Switch(
                value: valorbool,
                onChanged: (bool newValue) {
                  setState(() {
                    valorbool = newValue;
                  });
                },
              )
            ],
          ),
          Expanded(
            child: Image.asset(
              'assets/G2_Logo.png',
              height: base,
              width: altura,
              alignment: Alignment.center,
            ),
          ),
          /*
          FadeInImage(
            placeholder: AssetImage('assets/loading.gif'),
            image: AssetImage('assets/G2_Logo.png'),
            fadeInDuration: Duration(milliseconds: 200),
          ),*/
        ],
      )),
      /*
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.auto_awesome),
        onPressed: () {
          Navigator.pop(context);
        },
      ),*/
    );
  }

  void _sliderMobil(double newValue) {
    final random = Random();

    setState(() {
      valorSlider = newValue;
    });
  }
}
