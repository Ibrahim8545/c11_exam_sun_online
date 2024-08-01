import 'package:flutter/material.dart';
import 'package:routequiz/home_screen_two/widget/card_items.dart';
import 'package:routequiz/home_screen_two/widget/custom_app_bar.dart';
import 'package:routequiz/utlis/styles.dart';

class HomeScreenTwo extends StatelessWidget {
  const HomeScreenTwo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(
          top: 60,
          left: 26,
          right: 26,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const CustomAppBarTwo(),
            const SizedBox(
              height: 30,
            ),
            Row(
              children: [
                const Text(
                  'Hello, ',
                  style: Styles.textStyle20,
                ),
                Text(
                  'Sara Rose',
                  style:
                      Styles.textStyle20.copyWith(fontWeight: FontWeight.w600),
                )
              ],
            ),
            const SizedBox(
              height: 18,
            ),
            const Text(
              'How are you feeling today ?',
              style: Styles.textStyle14,
            ),
            const SizedBox(
              height: 12,
            ),
            Row(
              children: [
                Image.asset('assets/images/love.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/cool.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/happy.png'),
                const SizedBox(
                  width: 30,
                ),
                Image.asset('assets/images/sad.png'),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            Row(
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
            ),
            const SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/frame.png'),
            const SizedBox(
              height: 40,
            ),
            Row(
              children: [
                Text(
                  'Exsersie',
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
            ),


            const SizedBox(height: 20,),
            Row(
              children: [
                CardItem(
                  title: 'Relaxation',
                   imagePath: 'assets/images/relx.png'
                   ),
                   const SizedBox(width: 5,),
                   CardItem(
                    title: 'Meditation',
                     imagePath: 'assets/images/med.png'
                     )
                
              ],
              ),
              const SizedBox(height: 10,),
              Row(
              children: [
                CardItem(
                  title: 'Beathing',
                   imagePath: 'assets/images/breth.png'
                   ),
                   const SizedBox(width: 5,),
                   CardItem(
                    title: 'Yoga',
                     imagePath: 'assets/images/yoga.png'
                     )
                
              ],
              ),




          ],
        ),
      ),
    );
  }
}
