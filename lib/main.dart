import 'package:flutter/material.dart';
import 'package:garden/util/colors.dart';
import 'package:garden/pages/home.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: themeData,
      home: const HomeScreen(),
    );
  }
}
