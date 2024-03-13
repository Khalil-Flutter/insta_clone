import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/common/colors.dart';
import 'package:insta_clone/data/post_json.dart';

import '../../../data/story_json.dart';
import '../../../widget/p_i_w/post_item_widget.dart';
import '../../../widget/s_i_w/story_item_widget.dart';
import '../../story/story_screen.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: <Widget>[
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Row(
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.only(
                    right: 10,
                    left: 5,
                    bottom: 10,
                  ),
                  child: Column(
                    children: <Widget>[
                      SizedBox(
                        height: 70,
                        width: 70,
                        child: Stack(
                          children: <Widget>[
                            Container(
                              width: 70,
                              height: 70,
                              decoration: BoxDecoration(
                                shape: BoxShape.circle,
                                image: DecorationImage(
                                  image: AssetImage(profile),
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Container(
                                height: 19,
                                width: 19,
                                decoration: const BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: Colors.white,
                                ),
                                child: const Icon(
                                  Iconsax.add,
                                  size: 19,
                                  color: buttonFollowColor,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      SizedBox(
                        width: 70,
                        child: Text(
                          name,
                          overflow: TextOverflow.ellipsis,
                          style: const TextStyle(color: white),
                        ),
                      ),
                    ],
                  ),
                ),
                GestureDetector(
                  onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const StoryScreen(),
                    ),
                  ),
                  child: Row(
                    children: List.generate(
                      stories.length,
                      (index) {
                        return StoryItemWidget(
                          img: stories[index]["img"],
                          name: stories[index]["name"],
                        );
                      },
                    ),
                  ),
                ),
              ],
            ),
          ),
          Column(
            children: List.generate(
              posts.length,
              (index) {
                return PostItemWidget(
                  profileImg: posts[index]["profileImg"],
                  name: posts[index]["name"],
                  postImg: posts[index]["postImg"],
                  caption: posts[index]["caption"],
                  isLoved: posts[index]["isLoved"],
                  isVerified: posts[index]["isVerified"],
                  likedBy: posts[index]["likedBy"],
                  viewCount: posts[index]["commentCount"],
                  dayAgo: '',
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
