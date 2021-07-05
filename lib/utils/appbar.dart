import 'package:flutter/material.dart';

AppBar customAppBar(context, String title, {Widget actions}) {
  var theme = Theme.of(context);
  return AppBar(
    centerTitle: true,
    elevation: 0,
    // backgroundColor: Colors.white,
    // leading: Image.asset('assets/images/open_capsule.png'),
    title: Text(
      title,
      style: theme.textTheme.headline6.copyWith(color: Colors.white),
    ),
    actions: [
      actions,
    ],
  );
}