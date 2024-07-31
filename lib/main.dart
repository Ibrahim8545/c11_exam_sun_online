import 'package:flutter/material.dart';
import 'package:routequiz/home_screen_one/home_screen.dart';
import 'package:routequiz/home_screen_two/home_screen_two.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return const  MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeScreenTwo(),
    );
  }
}
