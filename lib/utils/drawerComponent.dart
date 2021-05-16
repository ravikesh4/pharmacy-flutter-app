import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

Drawer drawerComponent(BuildContext context) {
  return Drawer(
    child: ListView(
      padding: EdgeInsets.zero,
      children: <Widget>[
        DrawerHeader(
          decoration: BoxDecoration(
            color: Theme.of(context).primaryColor,
          ),
          child: Container(
              // alignment: Alignment.bottomLeft,
              child: Row(
                children: [
                  Container(
                    padding: EdgeInsets.only(right: 20),
                    alignment: Alignment.bottomLeft,
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(40),
                        child: Image.asset('assets/images/ads.jpg', width: 60,)),
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
                ],
              )),
        ),
        ListTile(
          leading: Icon(Icons.home_filled),
          title: Text('Shop By Medicines', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.file_present),
          title: Text('Upload Prescription', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.healing),
          title: Text('OTC & Wellness', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.shopping_cart_outlined),
          title: Text('My Orders', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.supervised_user_circle),
          title: Text('My Profile', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.local_offer),
          title: Text('Offers & Discounts', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help),
          title: Text('FAQs & Help', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.book_online),
          title: Text('Privacy & Terms', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.help_outline),
          title: Text('About Us', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        ListTile(
          leading: Icon(Icons.logout),
          title: Text('Log out', style: Theme.of(context).textTheme.bodyText1.copyWith(
              fontSize: 16
          ),),
          dense: true,
          minLeadingWidth: 20,
          onTap: () {},
        ),
        SizedBox(height: 10,),
        Divider(
          thickness: 1,
        ),
        Container(
          padding: EdgeInsets.only(left: 15),
          alignment: Alignment.topLeft,
          child: Image.asset('assets/images/open_capsule.jpeg', height: 80,),
        ),


      ],
    ),
  );
}
