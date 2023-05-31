import 'package:flutter/material.dart';

class MyTabBar extends StatelessWidget {
  const MyTabBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const DefaultTabController(
        length: 4,
        child: TabBar(
          unselectedLabelColor: Colors.black,
          labelColor: Colors.blue,
          indicatorPadding: EdgeInsets.all(8),
          indicatorSize: TabBarIndicatorSize.label,
          labelStyle: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.w500,
          ),
          isScrollable: true,
          tabs: [
            Tab(
              text: 'Popular',
            ),
            Tab(
              text: 'New',
            ),
            Tab(
              text: 'Trending',
            ),
            Tab(
              text: 'Random',
            ),
          ],
        ));
  }
}
