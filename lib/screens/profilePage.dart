import 'package:flutter/material.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/utils/menu_list.dart';

class ProfilePage extends StatefulWidget {
  @override
  _ProfilePageState createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.symmetric(vertical: 15),
              color: theme.primaryColor,
              // alignment: Alignment.bottomLeft,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      padding: EdgeInsets.only(right: 20),
                      alignment: Alignment.bottomLeft,
                      child: ClipRRect(
                          borderRadius: BorderRadius.circular(40),
                          child: Image.asset(
                            'assets/images/ads.jpg', width: 60,
                          ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.only(bottom: 10),
                      alignment: Alignment.bottomLeft,
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Ravikesh Yadav',
                            style: Theme.of(context)
                                .textTheme
                                .headline6
                                .copyWith(color: Colors.white),
                          ),
                          SizedBox(
                            height: 4,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.location_pin,
                                color: Colors.white,
                              ),
                              SizedBox(
                                width: 2,
                              ),
                              Text(
                                'Bangalore',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodyText2
                                    .copyWith(color: Colors.white),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 6, horizontal: 15),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.black87,
                      ),
                      child: Text('Edit', style: theme.textTheme.bodyText1.copyWith(color: Colors.white),),
                    ),
                  ],
                ),
            ),
            customMenuItems(context, leadingIcon: Icons.shopping_cart_sharp, title: 'My Orders'),
            customMenuItems(context, leadingIcon: Icons.favorite_border, title: 'Wishlist'),
            customMenuItems(context, leadingIcon: Icons.book_online, title: 'My Prescriptions'),
            customMenuItems(context, leadingIcon: Icons.credit_card, title: 'Payment Method'),
            customMenuItems(context, leadingIcon: Icons.map, title: 'Your Address'),
            customMenuItems(context, leadingIcon: Icons.file_present, title: 'Payment History'),
            customMenuItems(context, leadingIcon: Icons.people, title: 'Invites Friends'),
            customMenuItems(context, leadingIcon: Icons.vpn_key, title: 'Change Password'),
            customMenuItems(context, leadingIcon: Icons.logout, title: 'Log Out'),
            Container(
              width: MediaQuery.of(context).size.width,
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 50),
              alignment: Alignment.center,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage('assets/images/city.jpg',),),
              ),
              child: Image.asset('assets/images/open_capsule.png',),
            ),
          ],
        ),
      ),
    );
  }
}
