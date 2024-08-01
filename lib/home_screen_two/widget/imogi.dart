import 'package:flutter/material.dart';

class Imogies extends StatelessWidget {
  const Imogies({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
              child: Row(
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
            );
  }
}