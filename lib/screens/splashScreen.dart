import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:pharmacy/screens/introScreen.dart';

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    Future.delayed(const Duration(seconds: 5), () {
      Navigator.pushReplacement(
          context,
          MaterialPageRoute(
            builder: (context) => IntroScreen(),
          ));
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            child: Image.asset('assets/images/map.png'),
          ),
          Container(
            child: Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/open_capsule.jpeg',
                    width: MediaQuery.of(context).size.width * 0.6,
                  ),
                ),
                Text(
                  'Medical Pharmacy App',
                  style: Theme.of(context).textTheme.headline6,
                ),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 10),
                  child: Text(
                    'Buy any medicine from here',
                    style: Theme.of(context).textTheme.bodyText2,
                  ),
                ),
                Container(
                  width: MediaQuery.of(context).size.width * 0.5,
                  margin: EdgeInsets.only(top: 10),
                  child: LinearProgressIndicator(
                      // value: controller.value,
                      // semanticsLabel: 'Linear progress indicator',
                      ),
                ),
              ],
            ),
          ),
          Container(
            child: Image.asset('assets/images/city.jpg'),
          ),
        ],
      ),
    );
  }
}
