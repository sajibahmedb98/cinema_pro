import 'package:carousel_slider/carousel_slider.dart';
import 'package:cinema_pro/widgets/build_image.dart';
import 'package:flutter/material.dart';

class RecommendSection extends StatefulWidget {
  const RecommendSection({super.key});

  @override
  State<RecommendSection> createState() => _RecommendSectionState();
}

class _RecommendSectionState extends State<RecommendSection> {
  @override
  Widget build(BuildContext context) {
    final urlImages = [
    'https://i.pinimg.com/564x/50/12/76/5012766d5d9e5ab8094ffbc088916b29.jpg', //joker
    'https://images.unsplash.com/photo-1635805737707-575885ab0820?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1887&q=80',
    'https://images.unsplash.com/photo-1509347528160-9a9e33742cdb?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=1170&q=80',
    'https://images.unsplash.com/photo-1511875762315-c773eb98eec0?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1613679074971-91fc27180061?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
    'https://images.unsplash.com/photo-1505079174911-ea23eecf3445?ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D&auto=format&fit=crop&w=387&q=80',
  ];
    return CarouselSlider.builder(
              itemCount: urlImages.length,
              options: CarouselOptions(
                height: 280,
                // autoPlay: true,
                // autoPlayAnimationDuration: const Duration(milliseconds: 500),
                // enlargeCenterPage: true,
                viewportFraction: 0.5,
                // enlargeFactor: 0.2,
              ),
              itemBuilder: (context, index, realindex) {
                final urlImage = urlImages[index];
                return buildImage(urlImage, index);
              },
            );
  }
}