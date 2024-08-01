import 'package:flutter/material.dart';

class CardItem extends StatelessWidget {
  CardItem({super.key, required this.title, required this.imagePath});
  
  final String title;
  final String imagePath;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        height: 56,
        decoration: BoxDecoration(
          color:const  Color(0xffF9F5FF),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            Image.asset(imagePath, ),
            const SizedBox(width: 10),
            Text(title),
          ],
        ),
      ),
    );
  }
}
