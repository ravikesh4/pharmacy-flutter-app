import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/full_product_component.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/screens/listings/search_listings.dart';
import 'package:pharmacy/utils/appbar.dart';

class BrandListings extends StatefulWidget {
  const BrandListings({Key key}) : super(key: key);

  @override
  _BrandListingsState createState() => _BrandListingsState();
}

class _BrandListingsState extends State<BrandListings> {
  @override
  Widget build(BuildContext context) {
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
      body: ListView.builder(
        itemCount: 20,
        shrinkWrap: true,
        itemBuilder: (context, index) {
          return FullProductComponent(
            bestPrice: '300',
            mrp: '500',
            offer: '30% off',
            title: 'Dabur Chyawanprash',
            quantitylabel: 'Jar of 1KG paste',
          );
        },
      ),
    );
  }
}
