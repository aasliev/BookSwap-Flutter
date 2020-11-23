import 'package:bookswap_flutter/constants.dart';
import 'package:bookswap_flutter/methods/custom_button.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatefulWidget {
  @override
  _SignInScreenState createState() => _SignInScreenState();
}

class _SignInScreenState extends State<SignInScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Container(
              child: Image.asset(kLogoPath),
            ),
            TextField(
              keyboardType: TextInputType.emailAddress,
              onChanged: (value) {
                print(value);
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Email'),
            ),
            SizedBox(
              height: 8,
            ),
            TextField(
              obscureText: true,
              onChanged: (value) {
                print(value);
              },
              decoration: kTextFieldDecoration.copyWith(hintText: 'Password'),
            ),
            SizedBox(
              height: 8,
            ),
            Align(
              alignment: Alignment.centerRight,
              child: GestureDetector(
                child: Text(
                  'Forgot Password?',
                  style: kForgotPasswordTextStyle,
                ),
                onTap: () {
                  print('Tapped ForgotPassword');
                },
              ),
            ),
            CustomButton(
              text: 'Sign In',
              onPressed: () {
                print('Button Pressed');
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Don't have an account?",
                ),
                SizedBox(
                  width: 8,
                ),
                GestureDetector(
                  onTap: () {
                    print('SignUpTapped');
                  },
                  child: Text(
                    'Sign Up',
                    style: kSignUpTextStyle,
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
