import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';


Color whites = Colors.white;
Color navyBlue = Color(0xFF000000);
Color blue = Color(0xFF000059);
Color purple = Color(0xFF800080);
Color litepurple = Color(0xFF402788);
Color red = Color(0xFFEC2578);


class buttons {
  static LinearGradient colorsbuttons = LinearGradient(
      colors: [Color(0xFF497BFF).withOpacity(0.7), Color(0xFF402788).withOpacity(0.6),Color(0xFF0F55E8).withOpacity(0.5)],
      begin: Alignment.topRight,
      tileMode: TileMode.decal,
      end: Alignment.bottomLeft);
}


class colorGradient {
  static LinearGradient colorsScaffold = LinearGradient(
      colors: [Color(0xFF44103c), Color(0xFF000059), Colors.black],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}

class containerGradient {
  static LinearGradient gradientColor = LinearGradient(
      colors: [Color(0xFF44103c), Color(0xFF000059), Colors.black],
      begin: Alignment.topLeft,
      end: Alignment.bottomRight);
}