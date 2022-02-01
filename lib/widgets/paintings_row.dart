import 'package:flutter/material.dart';
import 'package:museum/screens/paintings.dart';
import 'package:museum/util/palette.dart';

Row buildPaintings(BuildContext context) {
  return Row(
    mainAxisAlignment: MainAxisAlignment.spaceBetween,
    children: <Widget>[
      const Text(
        'Explore our collection',
        style: TextStyle(
          fontSize: 22.0,
          fontWeight: FontWeight.w700,
          letterSpacing: 0.3,
        ),
      ),
      ElevatedButton.icon(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => Paintings()),
          );
        },
        style: ElevatedButton.styleFrom(
          primary: ColourPalette.accent,
          onPrimary: ColourPalette.secondary,
          minimumSize: const Size(100, 30),
          padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
          textStyle: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        icon: const Text('Explore'),
        label: Icon(
          Icons.arrow_forward_ios,
          color: ColourPalette.secondary,
        ),
      ),
    ],
  );
}
