import 'package:flutter/material.dart';
import 'package:google_nav_bar/google_nav_bar.dart';
import 'package:line_icons/line_icons.dart';

class BottomNavBar extends StatefulWidget {
  const BottomNavBar({super.key});

  @override
  State<BottomNavBar> createState() => _BottomNavBarState();
}

class _BottomNavBarState extends State<BottomNavBar> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10),
      decoration: BoxDecoration(
        color: Colors.grey[300],
      ),
      child: SafeArea(
        child: GNav(
          gap: 10,
          activeColor: Colors.white,
          tabBackgroundColor: Colors.blue.shade300,
          tabBorderRadius: 100,
          iconSize: 30,
          tabShadow: [
            BoxShadow(
              color: Colors.blue.withOpacity(0.5),
              blurRadius: 8,
            )
          ],
          padding: const EdgeInsets.symmetric(
            horizontal: 20,
            vertical: 15,
          ),
          tabs: const [
            GButton(
              icon: LineIcons.home,
              text: 'Home',
              // iconColor: Colors.white,
            ),
            GButton(
              icon: LineIcons.search,
              text: 'Search',
            ),
            GButton(
              icon: LineIcons.heart,
              text: 'Favorite',
            ),
            GButton(
              icon: LineIcons.user,
              text: 'Account',
            ),
          ],
        ),
      ),
    );
  }
}
