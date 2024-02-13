import 'package:flutter/material.dart';
import 'package:garden/util/header_tab_enum.dart';

import '../util/fonts.dart';
import '../util/image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  late int currentPageIndex;
  @override
  void initState() {
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0,
    );
    currentPageIndex = 0;
    _tabController.addListener(() {
      setState(() {});
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(),
      appBar: AppBar(
        title: const Text('Garden', style: appBarTextStyle),
        actions: [
          Container(
            padding: const EdgeInsets.only(right: 14),
            child: Image.asset(searchIcon),
          )
        ],
        centerTitle: true,
        bottom: TabBar(
          isScrollable: true,
          controller: _tabController,
          tabs: _buildTabs(),
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: const [
            Text('tab1'),
            Text('tab2'),
            Text('tab3'),
            Text('tab4'),
            // Text('tab5'),
          ],
        ),
      ),
      bottomNavigationBar: NavigationBar(
        onDestinationSelected: (int index) {
          setState(() {
            currentPageIndex = index;
          });
        },
        indicatorColor: Colors.amber,
        selectedIndex: currentPageIndex,
        destinations: const <Widget>[
          NavigationDestination(
            selectedIcon: Icon(Icons.home),
            icon: Icon(Icons.home_outlined),
            label: 'Home',
          ),
          NavigationDestination(
            icon: Badge(child: Icon(Icons.notifications_sharp)),
            label: 'Notifications',
          ),
          NavigationDestination(
            icon: Badge(
              label: Text('2'),
              child: Icon(Icons.messenger_sharp),
            ),
            label: 'Messages',
          ),
        ],
      ),
    );
  }

  List<Widget> _buildTabs() {
    final Map<HeaderTab, Map<String, String>> tabInfo = {
      HeaderTab.cook: {'activeImgPath': cookActiveIcon, 'imgPath': cookIcon},
      HeaderTab.craft: {'activeImgPath': craftActiveIcon, 'imgPath': craftIcon},
      HeaderTab.experiment: {
        'activeImgPath': experimentActiveIcon,
        'imgPath': experimentIcon
      },
      HeaderTab.outside: {
        'activeImgPath': outsideActiveIcon,
        'imgPath': outsideIcon
      },
    };
    return tabInfo.entries.map((entry) {
      return headerTab(
        activeImgPath: entry.value['activeImgPath']!,
        imgPath: entry.value['imgPath']!,
        tab: entry.key,
      );
    }).toList();
  }

  Widget headerTab(
      {required String activeImgPath,
      required imgPath,
      required HeaderTab tab}) {
    return Tab(
      height: 55,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 5),
        width: 73,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Image.asset(
                _tabController.index == tab.index ? activeImgPath : imgPath),
            Text(tab.name,
                style: _tabController.index == tab.index
                    ? tabBarActiveTextStyle
                    : tabBarTextStyle),
          ],
        ),
      ),
    );
  }
}

Drawer customDrawer() {
  return Drawer();
}
