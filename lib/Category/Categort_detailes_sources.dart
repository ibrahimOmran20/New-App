import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/Api_Manager.dart';
import 'package:news_app/Model/Model.dart';
import 'package:news_app/Model/SourceResponse.dart';
import 'package:news_app/MyTheme.dart';
import 'package:news_app/Tabs/Tab%20Container.dart';

class CategoryDetailsSources extends StatelessWidget {
  static const String routeName = 'category details';
  Category category;
  CategoryDetailsSources({required this.category});

  @override
  Widget build(BuildContext context) {
    return FutureBuilder<SourceResponse>(
      future: ApiManager.getSources(category.id),
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return Center(
              child: CircularProgressIndicator(
            color: MyTheme.primaryLightColor,
          ));
        } else if (snapshot.hasError) {
          return Column(
            children: [
              Text('SomeThing Get Wrong'),
              ElevatedButton(onPressed: () {}, child: Text('Try Again')),
            ],
          );
        }
        if (snapshot.data?.status != 'ok') {
          return Column(
            children: [
              Text(snapshot.data?.message ?? ""),
              ElevatedButton(onPressed: () {}, child: Text('Try Again')),
            ],
          );
        }
        var sourceList = snapshot.data?.sources ?? [];
        return TabContainer(sourceList: sourceList,);

      });
  }
}
