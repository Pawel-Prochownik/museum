import 'package:flutter/material.dart';
import 'package:museum/screens/nav_bar.dart';
import 'package:museum/util/palette.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ColourPalette.theme,
      home: const NavBar(),
    );
  }
}
