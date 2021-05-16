import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent-tab-view.dart';
import 'package:pharmacy/components/adsSlideCardComponent.dart';
import 'package:pharmacy/components/categoryShopComponent.dart';
import 'package:pharmacy/components/productComponent.dart';
import 'package:pharmacy/screens/HomePage.dart';
import 'package:pharmacy/screens/articlesPage.dart';
import 'package:pharmacy/screens/messagesPage.dart';
import 'package:pharmacy/screens/myOrdersPage.dart';
import 'package:pharmacy/screens/profilePage.dart';
import 'package:pharmacy/utils/drawerComponent.dart';

class HomeScreen extends StatefulWidget {
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  GlobalKey<ScaffoldState> drawerKey = new GlobalKey<ScaffoldState>();
  PersistentTabController _controller;

  List<Widget> _buildScreens() {
    return [
      HomePage(),
      ArticlesPage(),
      MyOrdersPages(),
      MessagesPages(),
      ProfilePage(),
    ];
  }

  List<PersistentBottomNavBarItem> _navBarsItems() {
    return [
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.home),
        title: ("Home"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.web_sharp),
        title: ("Articles"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.calendar),
        title: ("My Orders"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(Icons.comment),
        title: ("Messages"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),
      PersistentBottomNavBarItem(
        icon: Icon(CupertinoIcons.profile_circled),
        title: ("Profiles"),
        activeColorPrimary: Theme.of(context).primaryColor,
        inactiveColorPrimary: CupertinoColors.systemGrey,
      ),

    ];
  }

  @override
  void initState() {
    // TODO: implement initState
    _controller = PersistentTabController(initialIndex: 0);
    print('selected index ${_controller.index}');
    super.initState();
  }

  String _getTitle() {
    switch (_controller.index) {
      case 1:
        return 'Articles';
    // case 2:
    //   return "Business";
      case 2:
        return 'My Orders';
      case 3:
        return 'Messages';
      case 4:
        return 'Profile';
      default:
        return 'Pharmacy';
    }
  }

  Widget _getActions() {
    switch (_controller.index) {
      case 1:
        return Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.search,
              size: 30,
              color: Colors.white,
            ));
    // case 2:
    //   return "Business";
      case 2:
        return Container();
      case 3:
        return Container(
            padding: EdgeInsets.only(right: 20),
            child: Icon(
              Icons.more_vert,
              size: 30,
              color: Colors.white,
            ));
      case 4:
        return Row(
          children: [
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.notifications_active,
                  size: 30,
                  color: Colors.white,
                )),
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.settings,
                  size: 30,
                  color: Colors.white,
                )),
          ],
        );
      default:
        return Row(
          children: [
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.shopping_cart_outlined,
                  size: 30,
                  color: Colors.white,
                )),
            Container(
                padding: EdgeInsets.only(right: 20),
                child: Icon(
                  Icons.notifications_none,
                  size: 30,
                  color: Colors.white,
                )),
          ],
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      key: drawerKey,
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        // backgroundColor: Colors.white,
        // leading: InkWell(
        //   onTap: () => drawerKey.currentState.openDrawer(),
        //   child: Icon(Icons.menu_rounded),
        // ),
        title: Text(
          _getTitle(),
          style: theme.textTheme.headline6.copyWith(color: Colors.white),
        ),
        // actions: [
        //   _getActions(),
        // ],
      ),
      body: PersistentTabView(
        context,
        controller: _controller,
        screens: _buildScreens(),
        items: _navBarsItems(),
        confineInSafeArea: true,
        backgroundColor: Colors.white, // Default is Colors.white.
        handleAndroidBackButtonPress: true, // Default is true.
        resizeToAvoidBottomInset: true, // This needs to be true if you want to move up the screen when keyboard appears. Default is true.
        stateManagement: true, // Default is true.
        hideNavigationBarWhenKeyboardShows: true, // Recommended to set 'resizeToAvoidBottomInset' as true while using this argument. Default is true.
        decoration: NavBarDecoration(
          borderRadius: BorderRadius.circular(0.0),
          colorBehindNavBar: Colors.white,
        ),
        popAllScreensOnTapOfSelectedTab: true,
        popActionScreens: PopActionScreensType.all,
        itemAnimationProperties: ItemAnimationProperties( // Navigation Bar's items animation properties.
          duration: Duration(milliseconds: 200),
          curve: Curves.ease,
        ),
        onItemSelected: (index) {
          setState(() {
            _controller.index = index; // NOTE: THIS IS CRITICAL!! Don't miss it!
          });
        },
        screenTransitionAnimation: ScreenTransitionAnimation( // Screen transition animation on change of selected tab.
          animateTabTransition: true,
          curve: Curves.ease,
          duration: Duration(milliseconds: 200),
        ),
        navBarStyle: NavBarStyle.style3,
        onWillPop: (context) async {
          await showDialog(
            context: context,
            useSafeArea: true,
            builder: (context) => Container(
              height: 50.0,
              width: 50.0,
              color: Colors.white,
              child: ElevatedButton(
                child: Text("Close"),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
          );
          return false;
        },// Choose the nav bar style with this property.
      ),
      endDrawer: drawerComponent(context),
    );
  }
}
