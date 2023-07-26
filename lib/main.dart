import 'package:flutter/material.dart';
import 'package:news_app/Category/Categort_detailes_sources.dart';
import 'package:news_app/Home%20Screen.dart';
import 'package:news_app/Model/NewsResponse.dart';
import 'package:news_app/Model/SourceResponse.dart';
import 'package:news_app/MyTheme.dart';
import 'package:news_app/News/News%20Detailes.dart';
import 'package:news_app/News/News%20Item.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      routes: {
        HomeScreen.routeName:(context)=>HomeScreen(),
        NewsDetailes.routeName:(context)=>NewsDetailes(),

      },
      initialRoute: HomeScreen.routeName,
      theme: MyTheme.lightTheme,

    );
  }
}