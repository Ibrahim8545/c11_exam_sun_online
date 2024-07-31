import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset('assets/images/Logo Small.png'),
        const SizedBox(width:2 ,),
        Image.asset('assets/images/AudiBooks..png'),
        
        const Spacer(),
        const  Icon(Icons.settings,color: Colors.deepPurpleAccent,)
      ],
    );
  }
}