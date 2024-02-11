import 'package:flutter/material.dart';
import 'package:garden/Util/colors.dart';

import '../Util/image.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
  late TabController _tabController;
  @override
  void initState() {
    _tabController = TabController(
      length: 5,
      vsync: this,
      initialIndex: 0,
    );
    // タブの選択が変わった時にウィジェットを再構築するためのリスナーを追加
    _tabController.addListener(() {
      setState(() {}); // タブの選択が変わるたびにウィジェットを再構築
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
            padding: EdgeInsets.only(right: 14),
            child: Image.asset(searchIcon),
          )
        ],
        centerTitle: true,
        bottom: TabBar(
          controller: _tabController,
          tabs: [
            Tab(
              icon: Image.asset(
                  _tabController.index == 0 ? cookActiveIcon : cookIcon),
            ),
            Tab(
              icon: Image.asset(
                  _tabController.index == 1 ? craftActiveIcon : craftIcon),
            ),
            Tab(
              icon: Image.asset(
                  _tabController.index == 2 ? drawActiveIcon : drawIcon),
            ),
            Tab(
              icon: Image.asset(
                  _tabController.index == 3 ? playActiveIcon : playIcon),
            ),
            Tab(
              icon: Image.asset(_tabController.index == 4
                  ? experimentActiveIcon
                  : experimentIcon),
            ),
          ],
        ),
      ),
      body: SafeArea(
        child: TabBarView(
          controller: _tabController,
          children: [
            Text('tab1'),
            Text('tab2'),
            Text('tab3'),
            Text('tab4'),
            Text('tab5'),
          ],
        ),
      ),
    );
  }
}

Drawer customDrawer() {
  return Drawer();
}
