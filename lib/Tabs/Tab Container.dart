import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:news_app/Model/SourceResponse.dart';
import 'package:news_app/News/NewsContainer.dart';
import 'package:news_app/Tabs/Tab%20items.dart';

class TabContainer extends StatefulWidget {
 List<Sources> sourceList;

  TabContainer({required this.sourceList});

  @override
  State<TabContainer> createState() => _TabContainerState();
}

class _TabContainerState extends State<TabContainer> {
 int selectedIndex=0;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        DefaultTabController(
          length:widget.sourceList.length ,
          child: TabBar(
            onTap: (index){
              selectedIndex=index;
              setState(() {

              });
            },
            indicatorColor: Colors.transparent,
            isScrollable: true,
            tabs: widget.sourceList.map((sources) =>
                TabItem(source: sources,
                    isSelected: selectedIndex==widget.sourceList.indexOf(sources)) ).toList(),
          ),
        ),
        Expanded(child: NewsContainer(source:widget.sourceList[selectedIndex] ))

      ],
    );
  }
}
