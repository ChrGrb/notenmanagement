import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';

import './navigatorPage.dart';

import 'package:notenmanagement/widgets/gradeCardLarge.dart';

import 'package:notenmanagement/assets/constants.dart' as constants;


class TabView extends StatefulWidget {
  const TabView({Key? key}) : super(key: key);

  @override
  State<TabView> createState() => _TabViewState();
}

class _TabViewState extends State<TabView> {
  static final titles = ['One', 'Two2', 'Three'];

  items (BuildContext context) => [
    BottomNavigationBarItem(
        //label: titles[0],
        icon: Padding(
          padding: const EdgeInsets.only(top: 20),
          child: Icon(context.platformIcons.home)
        )
    ),
    BottomNavigationBarItem(
        //label: titles[1],
        icon: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Icon(
              context.platformIcons.collectionsSolid,
              color: constants.SECONDARY_COLOR
            )
        ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(top: 20),
          child: Icon(
            context.platformIcons.collectionsSolid,
            color: constants.PRIMARY_COLOR
          )
        )
    ),
    BottomNavigationBarItem(
        //label: titles[2],
        icon: Padding(
            padding: const EdgeInsets.only(top: 20, bottom: 20),
            child: Icon(context.platformIcons.error)
        )
    ),
  ];

  late PlatformTabController tabController;

  late List<Widget> tabs;

  @override
  void initState() {
    super.initState();

    tabController = PlatformTabController(initialIndex: 0);

    tabs = [
      const PlatformNavigatorPage(
        child: Padding(
          padding: EdgeInsets.all(20.0),
          child: GradeCardLarge(),
        )
      ),
      const PlatformNavigatorPage(
          child: Text('Tab 1')
      ),
      const PlatformNavigatorPage(
          child: Text('Tab 1')
      )
    ];
  }

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      iosContentPadding: true,
      tabController: tabController,
      appBarBuilder: (context, _) {
        return PlatformAppBar(
          title: const Text('Notenmanagement')
        );
      },
      bodyBuilder: (context, index) =>
          IndexedStack(index: index, children: tabs),
      items: items(context),
      tabsBackgroundColor: Colors.transparent,
    );
  }
}
