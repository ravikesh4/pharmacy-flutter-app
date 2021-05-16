import 'package:flutter/material.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';

class MessagesPages extends StatefulWidget {
  @override
  _MessagesPagesState createState() => _MessagesPagesState();
}

class _MessagesPagesState extends State<MessagesPages> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
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
