import 'dart:ui';

import 'package:news_app/MyTheme.dart';

class Category{
  String id;
  String title;
  String imagePath;
  Color backgroundColor;

  Category({required this.id,required this.title,
    required this.imagePath,required this.backgroundColor});
  //

  static List<Category> getCategory(){
    return[
      Category(id: 'sports', title: 'Sports',
          imagePath: 'assets/images/ball.png', backgroundColor: MyTheme.redColor),
      Category(id: 'technology', title: 'Technology',
          imagePath: 'assets/images/Politics.png', backgroundColor: MyTheme.darkBlueColor),
      Category(id: 'health', title: 'Health',
          imagePath: 'assets/images/health.png', backgroundColor: MyTheme.pinkColor),
      Category(id: 'science', title: 'Science',
          imagePath: 'assets/images/science.png', backgroundColor: MyTheme.yellowColor),
      Category(id: 'business', title: 'Business',
          imagePath: 'assets/images/bussines.png', backgroundColor: MyTheme.brownColor),
      Category(id: 'entertainment', title: 'Entertainment',
          imagePath: 'assets/images/environment.png', backgroundColor: MyTheme.blueColor),
      Category(id: 'general', title: 'General',
          imagePath: 'assets/images/science.png', backgroundColor: MyTheme.yellowColor),


    ];
  }
}