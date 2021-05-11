import 'package:awesome_dialog/awesome_dialog.dart';
import 'package:flutter/material.dart';
import 'package:pharmacy/config/config.dart';
import 'package:pharmacy/screens/loginScreen.dart';
import 'package:pharmacy/utils/customButton.dart';
import 'package:pharmacy/utils/inputfield.dart';

class SignupScreen extends StatefulWidget {
  @override
  SignupScreenState createState() => SignupScreenState();
}

class SignupScreenState extends State<SignupScreen> {
  bool term = false;

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
                'assets/images/open_capsule.png',
                width: 100,
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(vertical: 20, horizontal: 30),
              child: Text(
                'Sign up to browse online medicine near by location',
                textAlign: TextAlign.center,
                style: theme.textTheme.headline6
                    .copyWith(fontWeight: FontWeight.w900),
              ),
            ),
            InputField(
              hintText: 'Full name',
              suffixIcon: Icons.supervised_user_circle_rounded,
            ),
            InputField(
              hintText: 'Email address',
              suffixIcon: Icons.email,
            ),
            InputField(hintText: 'Phone number', suffixIcon: Icons.call),
            InputField(
              hintText: 'Date of birth',
              suffixIcon: Icons.calendar_today_rounded,
            ),
            InputField(
              hintText: 'Password',
              suffixIcon: Icons.remove_red_eye_outlined,
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: CheckboxListTile(
                activeColor: Theme.of(context).primaryColor,
                dense: false,
                controlAffinity: ListTileControlAffinity.leading,
                contentPadding: EdgeInsets.symmetric(horizontal: 0),
                title: const Text(
                    'By selecting this and signing you, you agree to our Term & Condition.'),
                value: term,
                onChanged: (bool value) {
                  setState(() {
                    term = !term;
                  });
                },
              ),
            ),
            SizedBox(
              height: 10,
            ),
            CustomButton(
              onPressed: () => animatedbutton(),
              child: Text('Confirm'),
            ),
            SizedBox(
              height: 10,
            ),
            Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Already have an account? ',
                  style: theme.textTheme.bodyText2,
                ),
                InkWell(
                  onTap: () => goto(context, LoginScreen(), replace: true),
                  child: Text(
                    ' Log In',
                    style: theme.textTheme.bodyText1
                        .copyWith(color: Colors.orange, fontSize: 18),
                  ),
                ),
              ],
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
              'You willl shortly  receive a message  with intructions to set up your password.',
              textAlign: TextAlign.center,
              style:
                  Theme.of(context).textTheme.bodyText2.copyWith(fontSize: 16),
            ),
          ),
          CustomButton(
            onPressed: () {
              Navigator.pop(context);
              goto(context, LoginScreen(), replace: true);
            },
            child: Text('Done'),
          )
        ],
      ),
    )..show();
  }
}
