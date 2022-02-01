import 'package:flutter/material.dart';
import 'package:museum/util/artwork_list.dart';
import 'package:museum/util/palette.dart';
import 'package:museum/widgets/artwork_card.dart';

class Paintings extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Our Collection'),
        centerTitle: true,
        backgroundColor: ColourPalette.accent,
      ),
      body: ListView(
        physics: const BouncingScrollPhysics(),
        children: artworks.map((artworks) => artworkCard(artworks)).toList(),
      ),
    );
  }
}
