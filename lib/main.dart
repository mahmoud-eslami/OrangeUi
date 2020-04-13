import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:orange_ui/resource/color/color.dart';
import 'package:orange_ui/screen/home.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.themeData,
      home: Home(),
    );
  }
}

class AppTheme {
  static ThemeData themeData = ThemeData(
    buttonTheme: ButtonThemeData(
      minWidth: 90,
      height: 60,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.all(
          Radius.circular(7),
        ),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      errorMaxLines: 1,
      helperMaxLines: 1,
      focusedBorder: UnderlineInputBorder(
        borderSide: BorderSide(color: MyColors.primaryColor),
      ),
      focusedErrorBorder: UnderlineInputBorder(
        borderSide: BorderSide(
          color: Colors.black,
        ),
      ),
      contentPadding: EdgeInsets.symmetric(horizontal: 10, vertical: 8),
      isDense: true,
      labelStyle: TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.normal,
        color: MyColors.labelTextColor,
      ),
      errorStyle: TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.normal,
        color: Colors.black,
      ),
    ),
    primaryColor: Colors.deepOrange[100],
    iconTheme: IconThemeData(color: MyColors.textColor),
  );
}
