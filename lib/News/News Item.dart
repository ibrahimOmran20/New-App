import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/NewsResponse.dart';
import 'package:news_app/MyTheme.dart';
import 'package:intl/intl.dart';
import 'package:news_app/News/News%20Detailes.dart';

class NewsItem extends StatefulWidget {
News  news;
NewsItem({required this.news});

  @override
  State<NewsItem> createState() => _NewsItemState();
}

class _NewsItemState extends State<NewsItem> {
  @override
  Widget build(BuildContext context) {
    //
    final format = DateTime.parse(widget.news.publishedAt??'');
    var newForm=format.hour;
    return InkWell(onTap: (){
      Navigator.pushNamed(context, NewsDetailes.routeName);
          },
      child: Container(
        clipBehavior: Clip.antiAlias,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
        ),
        margin: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Image.network(widget.news.urlToImage??''),
            Text(widget.news.author??'',style:
            TextStyle(fontSize: 12,color: MyTheme.greyColor,),),

            Text(widget.news.title??'',style:
            TextStyle(fontSize: 18,color: MyTheme.darkColor,),),

            Text('$newForm hours ago',textAlign: TextAlign.end,
              style: TextStyle(fontSize: 12,color: MyTheme.greyColor,),)

          ],
        ),
      ),
    );
  }
}
