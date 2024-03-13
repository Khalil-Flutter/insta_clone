import 'package:flutter/material.dart';
import 'package:insta_clone/screens/add_post/add_post_screen.dart';
import 'package:insta_clone/screens/reels/reels_screen.dart';
import 'package:insta_clone/widget/b_n_b_w/bottom_nav_bar_widget.dart';

import '../../screens/account/account_screen.dart';
import '../../screens/home/home_screen.dart';
import '../../screens/search/search_screen.dart';

class NavigationContainer extends StatefulWidget {
  const NavigationContainer({
    super.key,
  });
  @override
  State<NavigationContainer> createState() => _NavigationContainerState();
}

class _NavigationContainerState extends State<NavigationContainer> {
  int selectedPageIndex = 0;
  static const List<Widget> appPages = [
    HomeScreen(),
    SearchScreen(),
    AddPostScreen(),
    ReelsScreen(),
    AccountScreens(),
  ];

  void onIconTapped(int index) {
    setState(() {
      selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBarWidget(
        selectedPage: selectedPageIndex,
        onIconTap: onIconTapped,
      ),
      body: appPages[selectedPageIndex],
    );
  }
}
