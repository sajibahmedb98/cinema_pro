import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

Widget buildImage(String urlImage, int index) {
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
    ),
  );
}
