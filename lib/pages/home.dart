import 'package:flutter/material.dart';
import 'package:garden/Util/colors.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Garden', style: appBarTextStyle),
        centerTitle: true,
        // backgroundColor: appSeedColor,
        // elevation: 0,
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
