import 'package:cangzskrt/Screen/loginScreen.dart';
import 'package:cangzskrt/Screen/mainScreen.dart';
import 'package:cangzskrt/navBar.dart';
import 'package:cangzskrt/util/const.dart';
import 'package:flutter/material.dart';
import 'package:cangzskrt/Screen/loginScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: Constants.lightTheme,
      home: loginScreen(),
    );
  }
}
