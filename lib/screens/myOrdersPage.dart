import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/order_component.dart';
import 'package:pharmacy/components/post_components.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/screens/past_orders.dart';

class MyOrdersPages extends StatefulWidget {
  @override
  _MyOrdersPagesState createState() => _MyOrdersPagesState();
}

class _MyOrdersPagesState extends State<MyOrdersPages> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 60,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text('UPCOMING', style: theme.textTheme.headline6.copyWith(
                        color: theme.primaryColor,
                      ),),
                      decoration: BoxDecoration(
                        color: Colors.white,
                          border: Border.all(color: Colors.white)
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {
                      Navigator.of(context).pushReplacement(
                        CupertinoPageRoute(
                          builder: (BuildContext context) {
                            return PastOrdersPages();
                          },
                        ),

                      );
                      // pushNewScreen(
                      //   context,
                      //   screen: PastOrdersPages(),
                      //   withNavBar: true,
                      // );
                    },
                    child: Container(
                      padding: EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                      child: Text('PAST ORDERS',style: theme.textTheme.headline6.copyWith(
                      color: Colors.white,
                      ),),
                      decoration: BoxDecoration(
                          border: Border.all(color: Colors.white)
                      ),
                    ),
                  ),
                ],
              ),
            ),
            ListView.builder(
              itemCount: 10,
              shrinkWrap: true,
              physics: NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return OrderComponent(
                  category: 'Dietitian / Nutritionist',
                  title: 'Fruits to boost your health',
                  date: '16 May 2021',
                  orderId: 'PHRMCY0001',
                  price: 400,
                  status: 'Delivered',
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
