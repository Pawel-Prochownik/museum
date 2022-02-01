import 'package:flutter/material.dart';
import 'package:museum/widgets/paintings_row.dart';

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 20.0, horizontal: 25.0),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          children: <Widget>[
            const Text(
              "Art Museum",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.w800,
              ),
            ),
            const SizedBox(height: 20.0),
            buildPaintings(context),
            const SizedBox(height: 20),
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.asset('assets/images/museum.jpg', fit: BoxFit.cover),
            ),
          ],
        ),
      ),
    );
  }
}
