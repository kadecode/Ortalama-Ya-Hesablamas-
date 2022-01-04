import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class IconCins extends StatelessWidget {
  final String cinsiyet;
  final IconData icon;

  const IconCins({this.cinsiyet = 'Boş', this.icon = FontAwesomeIcons.child});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          cinsiyet,
          style: const TextStyle(
            color: Colors.blue,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        Icon(
          icon,
          color: Colors.blueGrey,
          size: 50,
        )
      ],
    );
  }
}
