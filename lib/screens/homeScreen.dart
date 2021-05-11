import 'package:flutter/material.dart';
import 'package:pharmacy/screens/loginScreen.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.white,
        leading: Image.asset('assets/images/open_capsule.png'),
        title: Text(
          'Pharmacy',
          style: theme.textTheme.headline6,
        ),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.shopping_cart_outlined,
                size: 30,
                color: Colors.black87,
              )),
          Container(
              padding: EdgeInsets.only(right: 20),
              child: Icon(
                Icons.notifications_none,
                size: 30,
                color: Colors.black87,
              )),
        ],
      ),
      body: Center(
        child: Text('Hello'),
      ),
    );
  }
}
