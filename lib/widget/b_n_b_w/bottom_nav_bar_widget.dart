import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../data/story_json.dart';

class BottomNavigationBarWidget extends StatelessWidget {
  const BottomNavigationBarWidget({
    super.key,
    required this.selectedPage,
    required this.onIconTap,
  });

  final Function onIconTap;
  final int selectedPage;
  final double iconSize = 30.0;

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black,
      height: 40,
      child: Center(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconButton(
              onPressed: () => {onIconTap(0)},
              icon: Icon(
                selectedPage == 0 ? Iconsax.home : Iconsax.home,
                color: selectedPage == 0 ? Colors.white : Colors.white38,
                size: iconSize,
              ),
            ),
            IconButton(
              onPressed: () => {onIconTap(1)},
              icon: Icon(
                selectedPage == 1
                    ? Iconsax.search_normal
                    : Iconsax.search_normal,
                color: selectedPage == 1 ? Colors.white : Colors.white38,
                size: iconSize,
              ),
            ),
            IconButton(
              onPressed: () => {onIconTap(2)},
              icon: Icon(
                selectedPage == 2 ? Iconsax.add_square : Iconsax.add_square,
                color: selectedPage == 2 ? Colors.white : Colors.white38,
                size: iconSize,
              ),
            ),
            IconButton(
              onPressed: () => {onIconTap(3)},
              icon: Icon(
                selectedPage == 3 ? Iconsax.video_play : Iconsax.video_play,
                color: selectedPage == 3 ? Colors.white : Colors.white38,
                size: iconSize,
              ),
            ),
            InkWell(
              onTap: () => {onIconTap(4)},
              child: Container(
                height: 28,
                width: 28,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: AssetImage(profile),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
