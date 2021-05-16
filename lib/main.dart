import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:pharmacy/screens/splashScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Colors.black,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
      systemNavigationBarColor: Colors.black,
      systemNavigationBarIconBrightness: Brightness.light,
    ));
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          primaryColor: Color(0xFF029971),
          accentColor: Colors.deepOrangeAccent,
          buttonColor: Color(0xFF1a9c7d),
          appBarTheme: AppBarTheme(
              textTheme: TextTheme(
            headline1: TextStyle(fontSize: 32.0, fontWeight: FontWeight.w800),
            headline2: TextStyle(fontSize: 24.0, fontWeight: FontWeight.w800),
            headline3: TextStyle(fontSize: 18.72, fontWeight: FontWeight.w800),
            headline4: TextStyle(fontSize: 16, fontWeight: FontWeight.w800),
            headline5: TextStyle(fontSize: 13.28, fontWeight: FontWeight.w800),
            headline6: TextStyle(fontSize: 12.0, fontWeight: FontWeight.w800),
            bodyText1: TextStyle(fontSize: 16.0, fontWeight: FontWeight.normal),
            bodyText2: TextStyle(fontSize: 14.0, fontWeight: FontWeight.normal),
          ))),
      home: SplashScreen(),
    );
  }
}
