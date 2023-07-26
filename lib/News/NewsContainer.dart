import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/Api_Manager.dart';
import 'package:news_app/Model/NewsResponse.dart';
import 'package:news_app/Model/SourceResponse.dart';
import 'package:news_app/MyTheme.dart';

import 'News Item.dart';

class NewsContainer extends StatelessWidget {
Sources source;
NewsContainer({required this.source});
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<NewsResponse>(
        future: ApiManager.getNews(source.id??'') ,
        builder: (context,snapshot){
          if(snapshot.connectionState==ConnectionState.waiting){
            return Center(child:
            CircularProgressIndicator(color: MyTheme.primaryLightColor),);
          } else if(snapshot.hasError){
          return  Column(
              children: [
                Text('SomeThing Get Wrong'),
                ElevatedButton(onPressed: () {}, child: Text('Try Again')),
              ],
            );
          }
          if(snapshot.data?.status!='ok'){
            return Column(
              children: [
                Text(snapshot.data?.message??''),
                ElevatedButton(onPressed: () {}, child: Text('Try Again')),
              ],
            );
          }
          var newsList=snapshot.data?.articles??[];
          return  ListView.builder(
              itemBuilder: (context,index){
               return  NewsItem(news:newsList[index]);
              },
            itemCount: newsList.length,
              );
        });
  }
}
