import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Widget categoryShopComponent(
    BuildContext context, Color colors, IconData icon, String text) {
  return Column(
    children: [
      Container(
        height: 55,
        width: 55,
        decoration: BoxDecoration(
            color: colors, borderRadius: BorderRadius.circular(100)),
        child: Icon(
          icon,
          color: Colors.white,
          size: 35,
        ),
      ),
      Container(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Text(
          text,
        ),
      )
    ],
  );
}
