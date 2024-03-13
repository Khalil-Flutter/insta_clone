import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/screens/account/components/body.dart';
import 'package:insta_clone/screens/account/components/menu/menu_screen.dart';
import 'package:insta_clone/screens/account/components/tab_bar/tab_bar_components/gallary.dart';
import 'package:insta_clone/screens/account/components/tab_bar/tab_bar_components/reels.dart';
import 'package:insta_clone/screens/account/components/tab_bar/tab_bar_components/tagged_posts.dart';

import '../../common/colors.dart';

class AccountScreens extends StatelessWidget {
  const AccountScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: black,
          title: Row(
            children: <Widget>[
              const Icon(
                Icons.lock_outline,
                color: Colors.white,
                size: 18,
              ),
              const SizedBox(
                width: 5,
              ),
              const SizedBox(
                width: 125,
                child: Text(
                  "muhammadkhalil573",
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    color: white,
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: Row(
                  children: <Widget>[
                    const Icon(
                      Iconsax.arrow_down_1,
                      size: 17,
                      color: white,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Image(
                      image: AssetImage("assets/images/thread_icon.png"),
                      color: Colors.white,
                      width: 20,
                      height: 20,
                      fit: BoxFit.cover,
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    const Icon(
                      Iconsax.add_square,
                      size: 24,
                      color: white,
                    ),
                    const SizedBox(
                      width: 25,
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            maintainState: true,
                            builder: (context) => const MenuScreen(),
                          ),
                        );
                      },
                      child: const Icon(
                        Icons.menu,
                        size: 24,
                        color: white,
                      ),
                    ),
                  ],
                ),
              )
            ],
          ),
        ),
        backgroundColor: black,
        body: const Column(
          children: <Widget>[
            Body(),
            TabBar(
              indicatorColor: white,
              unselectedLabelColor: Colors.white38,
              labelColor: white,
              tabs: [
                Icon(
                  Icons.grid_on_sharp,
                ),
                Icon(
                  Iconsax.video_play,
                ),
                Icon(
                  Iconsax.user_tag,
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                children: [
                  Gallery(),
                  Reels(),
                  TaggedPosts(),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
//
// class MyDelegate extends SliverPersistentHeaderDelegate {
//   final TabBar tabBar;
//
//   MyDelegate({required this.tabBar});
//
//   @override
//   Widget build(
//       BuildContext context, double shrinkOffset, bool overlapsContent) {
//     return tabBar;
//   }
//
//   @override
//   // TODO: implement maxExtent
//   double get maxExtent => tabBar.preferredSize.height;
//
//   @override
//   // TODO: implement minExtent
//   double get minExtent => tabBar.preferredSize.height;
//
//   @override
//   bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
//     return false;
//   }
// }
// NestedScrollView(
// headerSliverBuilder: (context, index) {
// return [
// SliverAppBar(
// floating: true,
// backgroundColor: black,
// collapsedHeight: 360,
// expandedHeight: 300,
// pinned: true,
// flexibleSpace: Body(),
// ),
// SliverPersistentHeader(
// floating: true,
// pinned: true,
// delegate: MyDelegate(
// tabBar: TabBar(
// indicatorColor: white,
// unselectedLabelColor: Colors.white38,
// labelColor: white,
// tabs: [
// Icon(
// Icons.grid_on_sharp,
// ),
// Icon(
// Iconsax.video_play,
// ),
// Icon(
// Iconsax.user_tag,
// ),
// ],
// ),
// ),
// ),
// ];
// },
// body: TabBarView(
// children: <Widget>[
// SearchScreen(),
// SearchScreen(),
// SearchScreen(),
// ],
// ),
// )
