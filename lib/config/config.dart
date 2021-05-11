
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Future<dynamic> goto(BuildContext context, Widget page,
    {bool replace = false}) {
  if (replace) {
    return Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  } else {
    return Navigator.push(
      context,
      MaterialPageRoute(builder: (_) => page),
    );
  }
}