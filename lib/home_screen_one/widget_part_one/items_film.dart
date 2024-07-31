import 'package:flutter/material.dart';

class FilmItem extends StatelessWidget {
  const FilmItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
     
            children: [
              Image.asset('assets/images/Image Placeholder 2.png',),
               SizedBox(width: 8,),
              Column(
                
                children: [
                  Text('Light Mage'),
                  SizedBox(height: 8,),
                  Text('Laurie Forest')
                ],
              ),
            
            ],
          );
  }
}