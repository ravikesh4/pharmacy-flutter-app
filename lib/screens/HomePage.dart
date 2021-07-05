import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/listings/all_brand_listings.dart';
import 'package:pharmacy/screens/listings/category_list.dart';
import 'package:pharmacy/screens/listings/search_listings.dart';
import 'package:pharmacy/screens/myOrdersPage.dart';
import 'package:pharmacy/utils/inputfield.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              // height: MediaQuery.of(context).size.height * 0.3,
              height: 200,
              decoration: BoxDecoration(
                color: Theme.of(context).primaryColor,
                borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(100),
                  bottomRight: Radius.circular(100),
                ),
                image: DecorationImage(
                  image: AssetImage('assets/images/ads1.png'),
                ),
              ),
              child: Stack(
                children: [
                  Positioned(
                    bottom: 40,
                    child: InkWell(
                      onTap: () => {
                        // goto(context, SearchListings(),),
                        pushNewScreen(
                          context,
                          screen: SearchListings(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                        ),
                      },
                      child: Container(
                        margin: EdgeInsets.only(
                            left: MediaQuery.of(context).size.width * 0.07),
                        width: MediaQuery.of(context).size.width * 0.86,
                        padding: EdgeInsets.all(15),
                        decoration: BoxDecoration(
                          color: Colors.white38,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Icon(
                              Icons.search,
                              color: Colors.black54,
                            ),
                            Container(
                              padding: EdgeInsets.only(left: 15),
                              width: MediaQuery.of(context).size.width * 0.70,
                              child: Text(
                                'Search Medicine & Healthcare Products',
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .headline6
                                    .copyWith(color: Colors.black54),
                              ),
                            )
                          ],
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    top: 30,
                    left: 90,
                    child: InkWell(
                        child: Container(
                            child: Image.asset(
                      'assets/images/pills.png',
                      width: 50,
                    ))),
                  ),
                ],
              ),
            ),
            InkWell(
              onTap: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => MyOrdersPages(),
                    ));
              },
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                padding: EdgeInsets.symmetric(horizontal: 10, vertical: 15),
                margin: EdgeInsets.symmetric(vertical: 20),
                decoration: BoxDecoration(
                  color: Theme.of(context).accentColor,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.camera_alt,
                      color: Colors.white,
                    ),
                    Container(
                      padding: EdgeInsets.only(left: 15),
                      // width: MediaQuery.of(context).size.width * 0.70,
                      child: Text(
                        'Upload your Prescription',
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .headline6
                            .copyWith(color: Colors.white70),
                      ),
                    )
                  ],
                ),
              ),
            ),
            Container(
              height: 140,
              padding: EdgeInsets.symmetric(horizontal: 15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Shop by Category',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          pushNewScreen(
                            context,
                            screen: CategoryLists(),
                            withNavBar: false, // OPTIONAL VALUE. True by default.
                            pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                          );
                        },
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Container(
                    height: 100,
                    child: ListView.builder(
                      itemCount: 20,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return InkWell(
                            onTap: () {
                              pushNewScreen(
                                context,
                                screen: AllBrandListings(),
                                withNavBar: false, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                              );
                            },
                            child: CategoryShopComponent(
                            colors: Colors.deepOrangeAccent,
                            icon: Icons.medical_services_outlined,
                            text: 'Category',
                            ));
                      },
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 15),
              alignment: Alignment.topLeft,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Text(
                    'Deals & Offers',
                    style: Theme.of(context).textTheme.headline6,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Text(
                    'Get special discounts on offers on Medicines',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                  SizedBox(
                    height: 8,
                  ),
                  Container(
                    height: 170,
                    child: ListView.builder(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) {
                        return adsSlideCardComponent(context, Colors.blue,
                            '60% Off', 'On prescription drug');
                      },
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // height: 140,
              padding: EdgeInsets.symmetric(horizontal: 15),
              margin: EdgeInsets.symmetric(vertical: 15),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        child: Text(
                          'Recent Product',
                          style: Theme.of(context).textTheme.headline6,
                        ),
                      ),
                      InkWell(
                        onTap: () {
                          print('Category view');
                        },
                        child: Text(
                          'View all',
                          style: Theme.of(context).textTheme.bodyText2,
                        ),
                      ),
                    ],
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  ),
                  Container(
                    // height: 100,
                    child: GridView.builder(
                      itemCount: 10,
                      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2,
                        childAspectRatio: 6 / 7,
                      ),
                      shrinkWrap: true,
                      physics: NeverScrollableScrollPhysics(),
                      itemBuilder: (context, index) {
                        return ProductComponent(
                          bestPrice: '300',
                          mrp: '500',
                          offer: '30% off',
                          title: 'Dabur Chyawanprash',
                          quantitylabel: 'Jar of 1KG paste',
                        );
                      },
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
