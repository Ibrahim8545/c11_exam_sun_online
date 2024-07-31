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
      body: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.only(
                top: 60,
                left: 26,
                right: 26,
              ),
              child: Column(
                children: [
                  const CustomAppBar(),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      const Text(
                        'Categories',
                        style: Styles.textStyle16,
                      ),
                      const Spacer(),
                      Text('See more',
                          style: Styles.textStyle14.copyWith(
                              color: const Color(0xff4838D1),
                              fontWeight: FontWeight.w500))
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: SingleChildScrollView(
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
                      'Business',
                      style: Styles.textStyle16,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Comedy',
                      style: Styles.textStyle16,
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Text(
                      'Dramama',
                      style: Styles.textStyle16,
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: Row(
                children: [
                  Text(
                    'Recommended For You',
                    style: Styles.textStyle16
                        .copyWith(fontWeight: FontWeight.w600),
                  ),
                  const Spacer(),
                  Text(
                    'See more',
                    style: Styles.textStyle16.copyWith(
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff4838D1)),
                  )
                ],
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 20),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: [
                    Image.asset('assets/images/film2.png', height: 300),
                    const SizedBox(
                      width: 20,
                    ),
                    Image.asset('assets/images/film.png'),
                  ],
                ),
              ),
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 50),
          ),
          const SliverToBoxAdapter(
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 26),
              child: Row(
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
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(height: 10),
          ),
          SliverFillRemaining(
            child: ListView.separated(
              padding: const EdgeInsets.symmetric(horizontal: 26),
              physics: const NeverScrollableScrollPhysics(),
              separatorBuilder: (context, index) => const SizedBox(
                height: 5,
              ),
              itemBuilder: (context, index) {
                return const FilmItem();
              },
              itemCount: 100,
            ),
          ),
        ],
      ),
      bottomNavigationBar: Container(
        padding: EdgeInsets.zero,
        child: BottomNavigationBar(
          items: const [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
            BottomNavigationBarItem(
                icon: ImageIcon(AssetImage('assets/images/lib.png')),
                label: 'Library'),
          ],
        ),
      ),
    );
  }
}
