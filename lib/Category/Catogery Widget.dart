import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Category/Category%20Item%20Widget.dart';
import 'package:news_app/Model/Model.dart';

class CategoryWidget extends StatelessWidget {
  var categoryList = Category.getCategory();
  Function onCategoryClicked;
  CategoryWidget({required this.onCategoryClicked});
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Text(
            'Pick Your News \n of interest..',
            style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            textAlign: TextAlign.start,
          ),
          SizedBox(height: 12,),
          Expanded(
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                mainAxisSpacing: 18,
                crossAxisSpacing: 18,
                crossAxisCount: 2,
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: (){
                    onCategoryClicked(categoryList[index]);
                  },
                  child: CategoryItemWidget(
                      category: categoryList[index], index: index),
                );
              },
              itemCount: categoryList.length,
            ),
          )
        ],
      ),
    );
  }
}
