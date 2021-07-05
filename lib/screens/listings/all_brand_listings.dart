import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/screens/listings/brand_listings.dart';
import 'package:pharmacy/screens/listings/category_filters.dart';
import 'package:pharmacy/screens/listings/search_listings.dart';
import 'package:pharmacy/utils/appbar.dart';

class AllBrandListings extends StatefulWidget {
  const AllBrandListings({Key key}) : super(key: key);

  @override
  _AllBrandListingsState createState() => _AllBrandListingsState();
}

class _AllBrandListingsState extends State<AllBrandListings> {
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      appBar: customAppBar(context, 'All Brands', actions: Row(
        children: [
          Container(
            child: IconButton(icon: Icon(Icons.search), onPressed: () {
              pushNewScreen(
                context,
                screen: SearchListings(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.sizeUp,
              );
            }),
          ),
          Container(
            child: IconButton(icon: Icon(Icons.shopping_cart_outlined), onPressed: () {
              pushNewScreen(
                context,
                screen: SearchListings(),
                withNavBar: false, // OPTIONAL VALUE. True by default.
                pageTransitionAnimation: PageTransitionAnimation.sizeUp,
              );
            }),
          ),
        ],
      ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              height: 80,
              child: ListView.builder(
                itemCount: 20,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return InkWell(
                      onTap: () {
                        pushNewScreen(

                          context,
                          screen: BrandListings(),
                          withNavBar: false, // OPTIONAL VALUE. True by default.
                          pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                        );
                      },
                      child: CategoryShopComponent(
                        colors: Colors.white,
                        icon: Icons.favorite,
                      ));
                },
              ),
              color: theme.primaryColor,
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
                      Row(
                        children: [
                          Container(
                            child: IconButton(icon: Icon(Icons.filter_alt_outlined), onPressed: () {
                              pushNewScreen(

                                context,
                                screen: FilterBy(),
                                withNavBar: false, // OPTIONAL VALUE. True by default.
                                pageTransitionAnimation: PageTransitionAnimation.sizeUp,
                              );
                            }),
                          ),
                          Text('Filter', style: theme.textTheme.bodyText1,)
                        ],
                      ),

                      InkWell(
                        onTap: () {
                          print('Category view');
                        },
                        child: Text(
                          '200 Products',
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
