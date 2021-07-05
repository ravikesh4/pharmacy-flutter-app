import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/screens/listings/all_brand_listings.dart';
import 'package:pharmacy/screens/listings/search_listings.dart';
import 'package:pharmacy/utils/appbar.dart';

class CategoryLists extends StatefulWidget {
  const CategoryLists({Key key}) : super(key: key);

  @override
  _CategoryListsState createState() => _CategoryListsState();
}

class _CategoryListsState extends State<CategoryLists> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: customAppBar(context, 'All Category', actions: Row(
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
      body: Container(
        padding: EdgeInsets.all(10),
        child: GridView.builder(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,

              // childAspectRatio: (MediaQuery.of(context).size.width)
            childAspectRatio: 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 10
          ),
            itemCount: 20,
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
                    leftText: true,
                    text: 'Category',
                  ));
            },),
      ),
    );
  }
}
