import 'package:flutter/material.dart';
import 'package:routequiz/home_screen_one/widget_part_one/custom_app_bar.dart';
import 'package:routequiz/home_screen_two/widget/custom_app_bar.dart';
import 'package:routequiz/utlis/styles.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:
       Padding(
        padding: const EdgeInsets.only(
                top: 60,
                left: 26,
                right: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomAppBarTwo(),
            SizedBox(height: 30,),
            Row(
              children: [
                const Text('Hello, ',style: Styles.textStyle20,),
                Text('Sara Rose',style: Styles.textStyle20.copyWith(
                  fontWeight: FontWeight.w600

                ),
                )
              ],
              ),
              const SizedBox(height: 18,),
               const Text('How are you feeling today ?',style: Styles.textStyle14,),
               const SizedBox(height: 12,),
               Row(
                children: [
                  Image.asset('assets/images/love.png'),
                  const SizedBox(width: 30,),
                   Image.asset('assets/images/cool.png'),
                   const SizedBox(width: 30,),
                    Image.asset('assets/images/happy.png'),
                    const SizedBox(width: 30,),
                     Image.asset('assets/images/sad.png'),
                ],
               ),
                const SizedBox(height: 50,),
                Row(
                children: [
                  Text(
                    'Feature',
                    style: Styles.textStyle18
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    'See more',
                    style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff027A48
)),
                  )
                ],
              ),
          ],
        ),
      ),
    );
  }
}