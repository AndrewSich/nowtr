import 'package:flutter/material.dart';
import 'dart:async';

import 'utils/const.dart';
import 'screens/home.dart';

class Landing extends StatefulWidget {
  @override
  _LandingState createState() => _LandingState();
}

class _LandingState extends State<Landing> {
  @override
  void initState() {
    super.initState();
    Timer(
        Duration(seconds: 3),
        () => Navigator.pushReplacement(
            context, MaterialPageRoute(builder: (context) => Home())));
  }

  // @override
  // Widget build(BuildContext context) {
  //   return Container(color: Color(0xFF00BF6D));
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: mPrimaryColor,
      body: Center(
        child: CircularProgressIndicator(),
      ), //Center
    ); //Scaffold
  }
}
