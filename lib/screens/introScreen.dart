import 'package:flutter/material.dart';
import 'package:intro_slider/dot_animation_enum.dart';
import 'package:intro_slider/intro_slider.dart';
import 'package:intro_slider/slide_object.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/homeScreen.dart';
import 'package:pharmacy/screens/loginScreen.dart';

class IntroScreen extends StatefulWidget {
  IntroScreen({Key key}) : super(key: key);

  @override
  IntroScreenState createState() => new IntroScreenState();
}

// ------------------ Custom your own tabs ------------------
class IntroScreenState extends State<IntroScreen> {
  List<Slide> slides = [];

  Function goToTab;

  @override
  void initState() {
    super.initState();

    slides.add(
      new Slide(
        title: "Buy and View Medicine Onlie",
        styleTitle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Colors.black87,
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/capsule.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Online Medical & Healthcare",
        styleTitle: TextStyle(
            color: Colors.black,
            fontSize: 20.0,
            fontWeight: FontWeight.bold,
            fontFamily: 'RobotoMono'),
        description:
            "Ye indulgence unreserved connection alteration appearance",
        styleDescription: TextStyle(
            color: Colors.black87,
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/open_capsule.png",
      ),
    );
    slides.add(
      new Slide(
        title: "Buy and View Medicine Onlie",
        styleTitle: TextStyle(
          color: Colors.black,
          fontSize: 20.0,
          fontWeight: FontWeight.bold,
          fontFamily: 'RobotoMono',
        ),
        description:
            "Lorem ipsum dolor sit amet, consectetuer adipiscing elit. Aenean commodo ligula eget dolor. Aenean massa.",
        styleDescription: TextStyle(
            color: Colors.black87,
            fontSize: 16.0,
            fontStyle: FontStyle.normal,
            fontFamily: 'Raleway'),
        pathImage: "assets/images/scooter.jpg",
      ),
    );
  }

  void onDonePress() => goto(context, LoginScreen());

  void onTabChangeCompleted(index) {
    // Index of current tab is focused
  }

  Widget renderNextBtn() {
    return Icon(
      Icons.navigate_next,
      color: Color(0xFFFFFFFF),
      size: 18.0,
    );
  }

  Widget renderDoneBtn() {
    return Icon(
      Icons.done,
      color: Color(0xFFFFFFFF),
      size: 18.0,
    );
  }

  Widget renderSkipBtn() {
    return Icon(
      Icons.skip_next,
      size: 18.0,
      color: Color(0xFFFFFFFF),
    );
  }

  List<Widget> renderListCustomTabs() {
    List<Widget> tabs = [];
    for (int i = 0; i < slides.length; i++) {
      Slide currentSlide = slides[i];
      tabs.add(Container(
        width: double.infinity,
        height: double.infinity,
        child: Container(
          margin: EdgeInsets.only(bottom: 60.0, top: 60.0),
          child: ListView(
            children: <Widget>[
              GestureDetector(
                  child: Container(
                child: Image.asset(
                  currentSlide.pathImage,
                  width: 200.0,
                  height: 200.0,
                  fit: BoxFit.contain,
                ),
              )),
              SizedBox(
                height: 100,
              ),
              Container(
                child: Text(
                  currentSlide.title,
                  style: currentSlide.styleTitle,
                  textAlign: TextAlign.center,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
              Container(
                padding: EdgeInsets.symmetric(horizontal: 20),
                child: Text(
                  currentSlide.description,
                  style: currentSlide.styleDescription,
                  textAlign: TextAlign.center,
                  maxLines: 5,
                  overflow: TextOverflow.ellipsis,
                ),
                margin: EdgeInsets.only(top: 20.0),
              ),
            ],
          ),
        ),
      ));
    }
    return tabs;
  }

  @override
  Widget build(BuildContext context) {
    return new IntroSlider(
      // Skip button
      renderSkipBtn: this.renderSkipBtn(),
      colorSkipBtn: Color(0xFF029971),
      highlightColorSkipBtn: Color(0xFF455752),

      // Next button
      renderNextBtn: this.renderNextBtn(),

      // Done button
      renderDoneBtn: this.renderDoneBtn(),
      onDonePress: this.onDonePress,
      colorDoneBtn: Color(0xFF029971),
      highlightColorDoneBtn: Color(0xFF455752),

      // Dot indicator
      colorDot: Color(0xFF455752),
      sizeDot: 10.0,
      typeDotAnimation: dotSliderAnimation.SIZE_TRANSITION,

      // Tabs
      listCustomTabs: this.renderListCustomTabs(),
      backgroundColorAllSlides: Colors.white,
      refFuncGoToTab: (refFunc) {
        this.goToTab = refFunc;
      },

      // Behavior
      scrollPhysics: BouncingScrollPhysics(),

      // Show or hide status bar
      hideStatusBar: false,
      // On tab change completed
      onTabChangeCompleted: this.onTabChangeCompleted,
    );
  }
}
