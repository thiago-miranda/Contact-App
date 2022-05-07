import 'package:flutter/material.dart';

const brightness = Brightness.light;
const primaryColor = Color(0xFF2AACFF);
const accentColor = Color(0xFFFFFFFF);

ThemeData androidTheme() {
  return ThemeData(
    brightness: brightness,
    textTheme: const TextTheme(
      bodyText2: TextStyle(
        fontFamily: "Poppings",
        color: Colors.black,
      ),
      bodyText1: TextStyle(
        fontFamily: "Poppins",
        color: Colors.black,
      ),
      button: TextStyle(
        fontFamily: "Poppins",
        color: Colors.black,
      ),
    ),
    primaryColor: primaryColor,
    colorScheme: ColorScheme?.fromSwatch().copyWith(
      brightness: brightness,
      secondary: accentColor,
    ),
  );
}
