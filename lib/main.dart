import 'package:flutter/material.dart';
import 'utils/theme.dart';
import 'landing.dart';

void main() => runApp(Nowtr());

class Nowtr extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: lightThemeData(context),
      darkTheme: darkThemeData(context),
      home: Landing(),
    );
  }
}
