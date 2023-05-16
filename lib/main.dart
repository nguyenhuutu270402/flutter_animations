import 'package:flutter/material.dart';
import 'package:my_app/animations/animations_page1.dart';
import 'package:my_app/box_designs/box_glass_page.dart';
import 'package:my_app/box_designs/box_shadow_page.dart';

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
      title: 'App Test',
      themeMode: ThemeMode.light,
      home: AnimationPage1(),
    );
  }
}
