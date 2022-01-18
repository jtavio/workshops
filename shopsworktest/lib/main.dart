import 'package:flutter/material.dart';
import 'package:shopsworktest/screen/home_screen.dart';
import 'package:shopsworktest/screen/page1_screen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreen(),
    );
  }
}
