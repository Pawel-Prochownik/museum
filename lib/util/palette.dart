import 'package:flutter/material.dart';

// ignore: avoid_classes_with_only_static_members
class ColourPalette {
  static Color primary = const Color(0xFF393E46);
  static Color secondary = const Color(0xFFEEEEEE);
  static Color tertiary = const Color(0xFF000000);
  static Color bgc = const Color(0xFF222831);
  static Color accent = const Color(0xFF00ADB5);

  static ThemeData theme = ThemeData(
    backgroundColor: bgc,
    primaryColor: primary,
    scaffoldBackgroundColor: bgc,
    textTheme: const TextTheme(
      bodyText1: TextStyle(),
      bodyText2: TextStyle(),
    ).apply(
      bodyColor: secondary,
      displayColor: secondary,
    ),
  );
}
