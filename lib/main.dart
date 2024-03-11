import 'package:flutter/material.dart';
import 'package:kralen_test1/bottom_na.dart';
import 'package:kralen_test1/homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Buy Car',
        home: BottomNavigation());
  }
}
