import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class ForgetPassword extends StatefulWidget {
  @override
  _ForgetPasswordState createState() => _ForgetPasswordState();
}

class _ForgetPasswordState extends State<ForgetPassword> {
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
                'assets/images/forget_password.png',
                width: 70,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20),
              child: Text(
                'Forget Password',
                style: theme.textTheme.headline5
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 0, horizontal: 30),
              child: Text(
                'Enter your email or phone number. You will receive a code to create a new password.',
                textAlign: TextAlign.center,
                style: theme.textTheme.bodyText2.copyWith(fontSize: 16),
              ),
            ),
            SizedBox(
              height: 60,
            ),
            InputField(
              hintText: 'Email or phone number',
              suffixIcon: Icons.email,
            ),
            SizedBox(
              height: 60,
            ),
            CustomButton(
              onPressed: () => animatedbutton(),
              child: Text('Confirm'),
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
              'A message has been sent!',
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  .copyWith(fontWeight: FontWeight.w900),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 10),
            child: Text(
              'You will shortly  receive a message  with intructions to set up your password.',
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
