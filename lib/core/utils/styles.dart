import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

abstract class Styles {
  static const title = TextStyle(
    fontWeight: FontWeight.w600,
    color: Colors.white,
    fontFamily: 'Arciform',
    fontSize: 20,
  );
  static const author = TextStyle(
    fontWeight: FontWeight.w600,
    color: Color.fromARGB(211, 233, 233, 233),
    fontFamily: 'Arciform',
    fontSize: 16,
  );
  static const price = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
    fontFamily: 'Arciform',
    fontSize: 24,
  );
  static const rating = TextStyle(
    fontWeight: FontWeight.bold,
    color: Color.fromARGB(255, 255, 255, 255),
    fontFamily: 'Arciform',
    fontSize: 16,
  );
}
