import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/mobileOtpScree.dart';
import 'package:pharmacy/screens/otpScreen.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class PhoneNumberScreen extends StatefulWidget {
  @override
  _PhoneNumberScreenState createState() => _PhoneNumberScreenState();
}

class _PhoneNumberScreenState extends State<PhoneNumberScreen> {
  TextEditingController _mobileController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    var theme = Theme.of(context);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            GestureDetector(
              onTap: () => Navigator.pop(context),
              child: Container(
                padding: EdgeInsets.only(left: 20),
                alignment: Alignment.topLeft,
                child: Icon(
                  Icons.arrow_back,
                  size: 30,
                ),
              ),
            ),
            Container(
              child: Image.asset(
                'assets/images/phone_number.png',
                width: 70,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Your Phone Number',
                style: theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                'Please enter your contact no. A 6 digit code will be sent to your phone.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText2.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InputField(
              controller: _mobileController,
              hintText: 'Phone number',
              suffixIcon: Icons.call,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              onPressed: () => goto(
                  context,
                  MobileOtpScreen(
                    mobile: _mobileController.text,
                  )),
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }

}
