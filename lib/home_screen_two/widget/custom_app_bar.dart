import 'package:flutter/material.dart';

class CustomAppBarTwo extends StatelessWidget {
  const CustomAppBarTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return  Row(
      children: [
        Image.asset('assets/images/logo.png'),
        const SizedBox(width:2 ,),
        Image.asset('assets/images/Moody.png'),
        
        const Spacer(),
       Image.asset('assets/images/notification.png')
      ],
    );
  }
}