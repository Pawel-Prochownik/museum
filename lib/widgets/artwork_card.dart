import 'package:flutter/material.dart';
import 'package:museum/util/palette.dart';

Widget artworkCard(artwork) {
  return Card(
    margin: const EdgeInsets.symmetric(
      horizontal: 20,
      vertical: 10,
    ),
    child: Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Image.asset(
            artwork.img,
          ),
          const SizedBox(),
          Text(
            artwork.title,
            style: TextStyle(
              fontSize: 15,
              fontWeight: FontWeight.w400,
              color: ColourPalette.tertiary,
            ),
          ),
        ],
      ),
    ),
  );
}
