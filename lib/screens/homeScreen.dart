import 'package:flutter/material.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';

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
      body: Column(
        children: [
          Center(
            child: Text('Hello World'),
          ),
          categoryShopComponent(
              context, Colors.red, Icons.category_sharp, 'Home'),
          adsSlideCardComponent(
              context, Colors.cyan, '60% off', 'On prescription drug'),
          Container(
            height: 300,
            child: ProductComponent(
                title: 'Dabar Chywanprash',
                quantitylabel: 'Jar of 1 KG',
                bestPrice: '400',
                mrp: '600',
                offer: '33% off'),
          ),
        ],
      ),
    );
  }
}
