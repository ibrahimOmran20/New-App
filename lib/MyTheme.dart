import 'package:flutter/animation.dart';
import 'package:flutter/material.dart';

class MyTheme {
  static Color primaryLightColor = Color(0xff39A552);
  static Color whiteColor = Color(0xffffffff);
  static Color redColor = Color(0xffc91c22);
  static Color darkBlueColor = Color(0xff003E90);
  static Color pinkColor = Color(0xffED1E79);
  static Color brownColor = Color(0xffCF7E48);
  static Color blueColor = Color(0xff4882CF);
  static Color yellowColor = Color(0xffF2D352);
  static Color greyColor = Color(0xff4F5A69);
  static Color darkColor = Color(0xff303030);

  static ThemeData lightTheme = ThemeData(
      primaryColor: MyTheme.primaryLightColor,
      appBarTheme: AppBarTheme(
          color: MyTheme.primaryLightColor,
          shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(30),
                  bottomRight: Radius.circular(30)))
      ),
      textTheme: TextTheme(
          titleMedium: TextStyle(
              fontWeight: FontWeight.bold,
              color: MyTheme.whiteColor,
              fontSize: 22)));
}
