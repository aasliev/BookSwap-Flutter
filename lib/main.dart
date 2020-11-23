import 'package:bookswap_flutter/constants.dart';
import 'package:bookswap_flutter/screens/sign_in_screen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: kAppTheme,
      home: SignInScreen(),
    );
  }
}
