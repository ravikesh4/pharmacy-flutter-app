import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/homeScreen.dart';
import 'package:pharmacy/screens/otpScreen.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class MobileOtpScreen extends StatefulWidget {
  final String mobile;

  const MobileOtpScreen({Key key, this.mobile}) : super(key: key);

  @override
  _MobileOtpScreenState createState() => _MobileOtpScreenState();
}

class _MobileOtpScreenState extends State<MobileOtpScreen> {
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
                'Phone Verification',
                style: theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                'Enter the 6-digit code you received in SMS on +91 ${widget.mobile}',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText2.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InputField(
              hintText: 'Enter OTP',
              suffixIcon: Icons.lock,
            ),
            SizedBox(
              height: 30,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Didn\'t received a code? ',
                  style: theme.textTheme.bodyText2,
                ),
                InkWell(
                  onTap: () => animatedbutton(),
                  child: Text(
                    ' Resend',
                    style: theme.textTheme.bodyText1
                        .copyWith(color: Colors.orange, fontSize: 18),
                  ),
                ),
              ],
            ),
            SizedBox(
              height: 30,
            ),
            CustomButton(
              onPressed: () => goto(context, HomeScreen()),
              child: Text('Continue'),
            ),
          ],
        ),
      ),
    );
  }

  AwesomeDialog animatedbutton() {
    return AwesomeDialog(
      context: context,
      headerAnimationLoop: false,
      dialogType: DialogType.NO_HEADER,
      title: 'Forget Password',
      padding: EdgeInsets.symmetric(vertical: 20),
      body: Column(
        children: [
          Container(
            child: Icon(
              Icons.check_circle_outline_outlined,
              size: 70,
              color: Theme.of(context).primaryColor,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'OTP sent!',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'You will shortly receive a message of OTP.',
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
            ),
          ),
          CustomButton(
            onPressed: () => Navigator.pop(context),
            child: Text('Done'),
          )
        ],
      ),
    )..show();
  }
}
