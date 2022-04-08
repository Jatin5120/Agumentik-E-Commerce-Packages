import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../constants.dart';

ThemeData kThemeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  fontFamily: "Muli",
  appBarTheme: _kAppBarTheme,
  textTheme: _kTextTheme,
  inputDecorationTheme: inputDecorationTheme(),
  visualDensity: VisualDensity.adaptivePlatformDensity,
);

InputDecorationTheme inputDecorationTheme() {
  OutlineInputBorder outlineInputBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(28),
    borderSide: const BorderSide(color: kTextColor),
    gapPadding: 10,
  );
  return InputDecorationTheme(
    // If  you are using latest version of flutter then lable text and hint text shown like this
    // if you r using flutter less then 1.20.* then maybe this is not working properly
    // if we are define our floatingLabelBehavior in our theme then it's not applayed
    floatingLabelBehavior: FloatingLabelBehavior.always,
    contentPadding: const EdgeInsets.symmetric(horizontal: 42, vertical: 20),
    enabledBorder: outlineInputBorder,
    focusedBorder: outlineInputBorder,
    border: outlineInputBorder,
  );
}

AppBarTheme _kAppBarTheme = const AppBarTheme(
  color: Colors.white,
  elevation: 0,
  iconTheme: IconThemeData(color: Colors.black),
  systemOverlayStyle: SystemUiOverlayStyle.dark,
);

TextTheme _kTextTheme = const TextTheme(
  headline1: TextStyle(
    color: kTextColor,
    fontSize: 96,
    fontWeight: FontWeight.w300,
    letterSpacing: -1.5,
  ),
  headline2: TextStyle(
    color: kTextColor,
    fontSize: 60,
    fontWeight: FontWeight.w300,
    letterSpacing: -0.5,
  ),
  headline3: TextStyle(
    color: kTextColor,
    fontSize: 48,
    fontWeight: FontWeight.w400,
  ),
  headline4: TextStyle(
    color: kTextColor,
    fontSize: 34,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  headline5: TextStyle(
    color: kTextColor,
    fontSize: 24,
    fontWeight: FontWeight.w400,
  ),
  headline6: TextStyle(
    color: kTextColor,
    fontSize: 20,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.15,
  ),
  subtitle1: TextStyle(
    color: kTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.15,
  ),
  subtitle2: TextStyle(
    color: kTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 0.1,
  ),
  bodyText1: TextStyle(
    color: kTextColor,
    fontSize: 16,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.5,
  ),
  bodyText2: TextStyle(
    color: kTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.25,
  ),
  button: TextStyle(
    color: kTextColor,
    fontSize: 14,
    fontWeight: FontWeight.w500,
    letterSpacing: 1.25,
  ),
  caption: TextStyle(
    color: kTextColor,
    fontSize: 12,
    fontWeight: FontWeight.w400,
    letterSpacing: 0.4,
  ),
  overline: TextStyle(
    color: kTextColor,
    fontSize: 10,
    fontWeight: FontWeight.w400,
    letterSpacing: 1.5,
  ),
);
