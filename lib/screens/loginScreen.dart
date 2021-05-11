import 'package:flutter/material.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/forget_password.dart';
import 'package:pharmacy/screens/homeScreen.dart';
import 'package:pharmacy/screens/phoneNumberScreen.dart';
import 'package:pharmacy/screens/signupScreen.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool term = false;

  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                height: 280,
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Container(
                              width: 60,
                              height: 60,
                              child: Image.asset('assets/images/capsule.png')),
                          Container(
                              width: 60,
                              height: 60,
                              child: Image.asset('assets/images/pills.png')),
                        ],
                      ),
                    ),
                    Container(
                      child: Text(
                        'BEST ONLINE',
                        style: theme.textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      child: Text(
                        'MEDICINE',
                        style: theme.textTheme.headline2.copyWith(
                            color: Colors.yellow, fontWeight: FontWeight.w800),
                      ),
                    ),
                    Container(
                      child: Text(
                        'DELIVERY APP',
                        style: theme.textTheme.headline5.copyWith(
                            color: Colors.white, fontWeight: FontWeight.w800),
                      ),
                    ),
                    SizedBox(
                      height: 40,
                    ),
                  ],
                ),
              ),
              Container(
                height: MediaQuery.of(context).size.height - 230,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(20),
                    topRight: Radius.circular(20),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      margin: EdgeInsets.symmetric(vertical: 20),
                      width: 70,
                      child: Image.asset('assets/images/logo.png'),
                    ),
                    InputField(
                      hintText: 'Email Address',
                    ),
                    InputField(
                      hintText: 'Password',
                      obscureText: true,
                    ),
                    Container(
                      padding: EdgeInsets.only(top: 20, left: 20, right: 20),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          Expanded(
                            child: CheckboxListTile(
                              dense: false,
                              controlAffinity: ListTileControlAffinity.leading,
                              contentPadding:
                                  EdgeInsets.symmetric(horizontal: 0),
                              title: const Text('Remember Me'),
                              value: term,
                              onChanged: (bool value) {
                                setState(() {
                                  term = !term;
                                });
                              },
                            ),
                          ),
                          InkWell(
                              onTap: () => goto(context, ForgetPassword()),
                              child:
                                  Container(child: Text('Forget Password?'))),
                        ],
                      ),
                    ),
                    CustomButton(
                      onPressed: () => goto(context, HomeScreen()),
                      child: Text('Sign In'),
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          'Don\'t have an account?',
                          style: theme.textTheme.bodyText2,
                        ),
                        InkWell(
                          onTap: () => goto(context, SignupScreen()),
                          child: Text(
                            'Sign up',
                            style: theme.textTheme.bodyText1
                                .copyWith(color: Colors.orange, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        InkWell(
                          onTap: () => goto(context, PhoneNumberScreen()),
                          child: Text(
                            'OTP Login',
                            style: theme.textTheme.bodyText1
                                .copyWith(color: Colors.orange, fontSize: 18),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Center(
                      child: Text('Or sign in with'),
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomButton(
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Icon(Icons.face),
                                SizedBox(
                                  width: 5,
                                ),
                                Text('Facebook'),
                              ],
                            ),
                            color: Colors.blue[800],
                          ),
                        ),
                        Expanded(
                          child: CustomButton(
                              onPressed: () {},
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Icon(Icons.face),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text('Google'),
                                ],
                              ),
                              color: Colors.red[800]),
                        ),
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
