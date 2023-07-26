import 'package:flutter/cupertino.dart';
import 'package:news_app/Model/SourceResponse.dart';
import 'package:news_app/MyTheme.dart';

class TabItem extends StatelessWidget {
Sources source;
bool isSelected;
TabItem({required this.source,required this.isSelected});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 8,horizontal: 24),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
        color: isSelected ? MyTheme.primaryLightColor : MyTheme.whiteColor,
        borderRadius: BorderRadius.circular(18),
        border: Border.all(color: MyTheme.primaryLightColor),
      ),
      child: Text(source.name??'',style: TextStyle(
        color: isSelected ? MyTheme.whiteColor : MyTheme.primaryLightColor,
        fontSize: 22,
        fontWeight: FontWeight.bold
      )),
    );
  }
}
