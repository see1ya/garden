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
              icon: Image.asset(cookActiveIcon),
            ),
            Tab(
              icon: Image.asset(craftIcon),
            ),
            Tab(
              icon: Image.asset(drawIcon),
            ),
            Tab(
              icon: Image.asset(playIcon),
            ),
            Tab(
              icon: Image.asset(experimentIcon),
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
