import 'package:flutter/material.dart';
import 'package:componentes/src/pages/alertpage.dart';
import 'package:componentes/src/pages/avatarpage.dart';
import 'package:componentes/src/pages/homepagetemp.dart';
import 'package:componentes/src/pages/cardpage.dart';
import 'package:componentes/src/pages/animated_container.dart';
import 'package:componentes/src/pages/sliderpage.dart';
import 'package:componentes/src/pages/inputpage.dart';

//Rutes
Map<String, Widget Function(BuildContext)> getApplicationRoutes() {
  return <String, Widget Function(BuildContext)>{
    '/': (BuildContext context) => HomePageTemp(),
    'alert': (BuildContext context) => AlertPage(),
    'avatar': (BuildContext context) => AvatarPage(),
    'card': (BuildContext context) => CardPage(),
    'animatedContainer': (BuildContext context) => AnimatedContainerPage(),
    'slider': (BuildContext context) => SliderPage(),
    'input': (BuildContext context) => InputPage(),
  };
}
