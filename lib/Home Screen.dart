import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Category/Categort_detailes_sources.dart';
import 'package:news_app/Model/Model.dart';
import 'package:news_app/MyTheme.dart';
import 'package:news_app/Settings/Settings.dart';

import 'Category/Catogery Widget.dart';
import 'home/Home Drawer.dart';

class HomeScreen extends StatefulWidget {
  static const String routeName='home';

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('News App',style: Theme.of(context).textTheme.titleMedium,),
        centerTitle: true,
      ),
      drawer: Drawer(
        child: HomeDrawer(
            onItemSideMenu: onSideItemMenuClick
        ),
      ),
      body: selectedSideMenu == HomeDrawer.settings ?
          SettingTab() :
      selcetedCategory ==null ?
          CategoryWidget(onCategoryClicked: onCategoryClicked)
          :
          CategoryDetailsSources(category: selcetedCategory!)
      ,

    );
  }

  Category? selcetedCategory= null;

  void onCategoryClicked(Category category){
    selcetedCategory=category;
    setState(() {

    });
  }
  int selectedSideMenu= HomeDrawer.category;
   void onSideItemMenuClick(int newselectedItemDrawer){
     selectedSideMenu=newselectedItemDrawer;
     selcetedCategory=null;
     Navigator.pop(context);
     setState(() {

     });
   }
}
