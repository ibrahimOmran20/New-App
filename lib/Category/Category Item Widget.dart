import 'package:flutter/cupertino.dart';
import 'package:news_app/Model/Model.dart';
import 'package:news_app/MyTheme.dart';

class CategoryItemWidget extends StatelessWidget {
  Category category;
  int index;

  CategoryItemWidget({required this.category,required this.index});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      decoration: BoxDecoration(
        color: category.backgroundColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
          bottomLeft: Radius.circular(index%2==0 ? 20:0),
          bottomRight: Radius.circular(index%2==0 ? 0:20)

        )
      ),
      child: Column(
        children: [
          Image.asset(category.imagePath,height: 100,),
          Text(category.title,style: TextStyle(
            color: MyTheme.whiteColor,fontWeight: FontWeight.w700,fontSize: 20
          ),)
        ],
      ),

    );
  }
}
