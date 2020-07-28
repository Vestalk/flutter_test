import 'package:flutter/material.dart';
import 'dart:math';

class ColorManager {
  var _random = Random();

  Color getRandomColor() {
    int a = _random.nextInt(255);
    int r = _random.nextInt(255);
    int g = _random.nextInt(255);
    int b = _random.nextInt(255);
    return Color.fromARGB(a, r, g, b);
  }
}
