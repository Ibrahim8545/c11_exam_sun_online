import 'package:flutter/material.dart';
import 'package:routequiz/widget_part_one/custom_app_bar.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            CustomAppBar(),
          ]
          ),
      ),
    );
  }
}