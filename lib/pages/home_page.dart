import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_pro/components/bottom_nav_bar.dart';
import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final urlImages = [
    'https://i.pinimg.com/564x/50/12/76/5012766d5d9e5ab8094ffbc088916b29.jpg', //joker
    'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1511875762315-c773eb98eec0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1613679074971-91fc27180061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1505079174911-ea23eecf3445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
  ];

  final names = [
    'Joker',
    'Spiderman',
    'The Dark Knight Rises',
    'Batman Begins',
    'Batman v Superman',
    'Justice League',
  ];
  final ratigs = [
    '9.0',
    '8.5',
    '8.4',
    '8.2',
    '8.1',
    '7.5',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: SafeArea(
        child: Column(
          children: [
            //appbar
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  //drawer icon
                  const Icon(LineIcons.bars),

                  //title text
                  const Text(
                    'Cinema Pro',
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),

                  //user profile picture
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image.asset(
                      'lib/assets/user.png',
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            CarouselSlider.builder(
              options: CarouselOptions(
                height: 350,
                // autoPlay: true,
                // autoPlayAnimationDuration: const Duration(milliseconds: 500),
                enlargeCenterPage: true,
                viewportFraction: 0.6,
                enlargeFactor: 0.2,
              ),
              itemCount: urlImages.length,
              itemBuilder: (context, index, realindex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
            )
          ],
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }

  Widget buildImage(String urlImage, int index) {
    return Container(
        margin: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
        ),
        // margin: const EdgeInsets.symmetric(horizontal: 5),
        child: Stack(
          fit: StackFit.expand,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(20),
              child: Image.network(
                urlImage,
                fit: BoxFit.cover,
              ),
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                Padding(
                  padding: const EdgeInsets.all(12.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      const Icon(
                        LineIcons.starAlt,
                        color: Colors.yellow,
                        shadows: [
                          Shadow(
                            color: Colors.black,
                            blurRadius: 20,
                          )
                        ],
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Text(
                        ratigs[index],
                        style: const TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          color: Colors.white,
                        ),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 10,
                    vertical: 15,
                  ),
                  child: Text(
                    textAlign: TextAlign.center,
                    names[index],
                    style: const TextStyle(
                      fontSize: 25,
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      shadows: [
                        Shadow(
                          color: Colors.black,
                          blurRadius: 20,
                        )
                      ],
                    ),
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
