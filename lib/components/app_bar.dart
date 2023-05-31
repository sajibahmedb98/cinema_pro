import 'package:flutter/material.dart';
import 'package:line_icons/line_icons.dart';

class MyAppBar extends StatelessWidget {
  const MyAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return //appbar
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
            );
  }
}