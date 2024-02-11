import 'package:flutter/material.dart';

ThemeData themeData = ThemeData(
  scaffoldBackgroundColor: Colors.white,
  appBarTheme: const AppBarTheme(color: defaultBgColor),
  colorScheme: ColorScheme.fromSeed(seedColor: appSeedColorTest),
  useMaterial3: true,
);
const Color appSeedColorTest = Colors.black;
const Color defaultBgColor = Color(0xFFFCFAF7);
const Color titleColor = Color(0xFF1C120D);
const TextStyle appBarTextStyle = TextStyle(
  color: Color(0xFF1C120D),
  fontFamily: 'Epilogue',
  fontSize: 18,
  fontWeight: FontWeight.bold,
);
