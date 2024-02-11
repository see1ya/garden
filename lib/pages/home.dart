import 'package:flutter/material.dart';
import 'package:garden/Util/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      drawer: customDrawer(),
      appBar: AppBar(
        title: const Text('Garden', style: appBarTextStyle),
        actions: [
          Container(
              padding: EdgeInsets.only(right: 14),
              child: Image.asset("lib/assets/searchIcon.png"))
        ],
        centerTitle: true,
      ),
      body: Center(
        child: Container(
          // color: appSeedColor,
          decoration: BoxDecoration(
            border: Border.all(width: 1),
            color: defaultBgColor,
          ),
          width: 300,
          height: 500,
        ),
      ),
    );
  }
}

Drawer customDrawer() {
  return Drawer();
}
