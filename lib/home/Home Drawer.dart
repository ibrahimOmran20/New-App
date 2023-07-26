import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/MyTheme.dart';

class HomeDrawer extends StatelessWidget {
  Function onItemSideMenu;
  HomeDrawer({required this.onItemSideMenu});
  static const int category=1;
  static const int settings=2;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.infinity,
          padding: EdgeInsets.symmetric(vertical: 64),
          color: MyTheme.primaryLightColor,
          child: Text(
            'News App!',
            style: TextStyle(color: MyTheme.darkColor, fontSize: 22),
            textAlign: TextAlign.center,
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              onItemSideMenu(HomeDrawer.category);
            },
            child: Row(
              children: [
                Icon(
                  Icons.list_outlined,
                  size: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Categories',
                      style: TextStyle(color: MyTheme.darkColor, fontSize: 20)),
                )
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: InkWell(
            onTap: () {
              onItemSideMenu(HomeDrawer.settings);
            },
            child: Row(
              children: [
                Icon(
                  Icons.settings,
                  size: 24,
                ),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Text('Settings',
                      style: TextStyle(color: MyTheme.darkColor, fontSize: 20)),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
