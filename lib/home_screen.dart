import 'package:flutter/material.dart';
import 'package:routequiz/utlis/styles.dart';
import 'package:routequiz/widget_part_one/custom_app_bar.dart';
import 'package:routequiz/widget_part_one/items_film.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: EdgeInsets.only(
          top: 60,
          left: 26,
          right: 26,
         ),
        child: Column(children: [
          CustomAppBar(),
          SizedBox(
            height: 20,
          ),
          Row(
            children: [
              Text(
                'Categories',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              Spacer(),
              Text(
                'See more',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0xff4838D1)),
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Art',
                  style: Styles.textStyle16,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Bussines',
                  style: Styles.textStyle16,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Commedy',
                  style: Styles.textStyle16,
                ),
                SizedBox(
                  width: 30,
                ),
                Text(
                  'Dramma',
                  style: Styles.textStyle16,
                ),
              ],
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Row(
            children: [
              Text(
                'Recommended For You',
                style: Styles.textStyle16.copyWith(fontWeight: FontWeight.w600),
              ),
              const Spacer(),
              Text(
                'See more',
                style: Styles.textStyle16.copyWith(
                    fontWeight: FontWeight.w500, color:const  Color(0xff4838D1)),
              )
            ],
          ),
          const SizedBox(
            height: 20
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: [
                Image.asset('assets/images/film2.png',height: 300,),
                const SizedBox(
                  width: 20,
                ),
                Image.asset('assets/images/film.png',),
              ],
            ),
          ),
          const SizedBox(
            height: 50
          ),
          const Row(
            children: [
              Text(
                'Best Seller',
                style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins'),
              ),
              Spacer(),
              Text(
                'See more',
                style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    fontFamily: 'Poppins',
                    color: Color(0xff4838D1)),
              )
            ],
          ),
          const SizedBox(
            height: 10
          ),
          Expanded(
            
            child: ListView.separated(
              padding: EdgeInsets.zero,
              separatorBuilder: (context, index) => SizedBox(height: 5,),
              itemBuilder: (context, index) {
              return FilmItem();
            },
            itemCount: 100,
            ),
          ),
        
          
          
        ]),
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          items: [
            const BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(icon: ImageIcon(AssetImage('assets/images/lib.png')), label: 'Library'),
          ],
        ),
      ),
    );
  }
}
