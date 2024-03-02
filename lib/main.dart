import 'package:flutter/material.dart';
import 'package:home_screen_task/screen/home_screen.dart';
import 'package:home_screen_task/widget/bottom_navigation_bar.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BottomNavigationBarWidget(),
    );
  }
}
