import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_pro/components/app_bar.dart';
import 'package:cinema_pro/components/bottom_nav_bar.dart';
import 'package:cinema_pro/components/my_tab_bar.dart';
import 'package:cinema_pro/components/recommend.dart';
import 'package:cinema_pro/components/search_field.dart';
import 'package:cinema_pro/widgets/build_image.dart';
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
        bottom: false,
        child: SingleChildScrollView(
          child: Column(
            children: [
              //app bar
              const MyAppBar(),

              const SizedBox(height: 10),

              //search field
              const SearchField(),

              //category tab bar
              const MyTabBar(),

              CarouselSlider.builder(
                itemCount: urlImages.length,
                options: CarouselOptions(
                  height: 320,
                  // autoPlay: true,
                  // autoPlayAnimationDuration: const Duration(milliseconds: 500),
                  enlargeCenterPage: true,
                  viewportFraction: 0.6,
                  enlargeFactor: 0.2,
                ),
                itemBuilder: (context, index, realindex) {
                  final urlImage = urlImages[index];
                  return buildImage(urlImage, index);
                },
              ),
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'We Recommend',
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.w600),
                    ),
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Colors.grey.shade400,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              LineIcons.angleLeft,
                              size: 20,
                            ),
                          ),
                        ),
                        const SizedBox(width: 10),
                        Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(100),
                            border: Border.all(
                              color: Colors.grey,
                            ),
                          ),
                          child: const Center(
                            child: Icon(
                              LineIcons.angleRight,
                              size: 20,
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              const RecommendSection()
            ],
          ),
        ),
      ),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
