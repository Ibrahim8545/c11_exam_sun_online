import 'package:flutter/material.dart';
import 'package:routequiz/utlis/styles.dart';

class Titles extends StatelessWidget {
   Titles({super.key,required this.tilte, required this.anotherTitle});
String tilte;
String anotherTitle;
  @override
  Widget build(BuildContext context) {
    return Row(
              children: [
                Text(
                  'Feature',
                  style:
                      Styles.textStyle18.copyWith(fontWeight: FontWeight.w600),
                ),
                const Spacer(),
                Text(
                  'See more',
                  style: Styles.textStyle16.copyWith(
                      fontWeight: FontWeight.w500,
                      color: const Color(0xff027A48)),
                ),
              ],
            );
  }
}