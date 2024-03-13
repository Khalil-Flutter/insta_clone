import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/common/colors.dart';
import 'package:insta_clone/data/reels_json.dart';
import 'package:insta_clone/screens/reels/components/reels_down_bar.dart';
import 'package:insta_clone/screens/reels/components/reels_side_bar.dart';

class ReelsScreen extends StatefulWidget {
  const ReelsScreen({
    super.key,
  });

  @override
  State<ReelsScreen> createState() => _ReelsScreenState();
}

class _ReelsScreenState extends State<ReelsScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        title: const Row(
          children: <Widget>[
            Text(
              "Reels",
              style: TextStyle(
                color: white,
              ),
            ),
            Icon(
              Icons.arrow_drop_down,
              color: white,
            ),
          ],
        ),
        centerTitle: false,
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Iconsax.camera,
              color: white,
            ),
          ),
        ],
      ),
      body: PageView.builder(
        itemCount: video.length,
        physics: const BouncingScrollPhysics(),
        scrollDirection: Axis.vertical,
        itemBuilder: (context, index) {
          return Container(
              decoration: BoxDecoration(
                border: Border.all(color: black),
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage(
                    video[index]["reelImg"],
                  ),
                ),
              ),
              child: Center(
                child: Stack(
                  children: <Widget>[
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            black.withOpacity(0.3),
                            Colors.transparent,
                          ],
                          begin: const Alignment(0, -0.75),
                          end: const Alignment(0, 0.1),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          colors: [
                            black.withOpacity(0.3),
                            Colors.transparent,
                          ],
                          begin: const Alignment(0, 0.1),
                          end: const Alignment(0, -0.75),
                        ),
                      ),
                    ),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: <Widget>[
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.end,
                          children: <Widget>[
                            Flexible(
                              flex: 8,
                              child: ReelsDownBar(
                                text: video[index]["caption"],
                                img: video[index]["img"],
                                name: video[index]["name"],
                                tile: video[index]["tile"],
                              ),
                            ),
                            Flexible(
                              flex: 1,
                              child: ReelsSideBar(
                                likeText: video[index]["like"],
                                commentText: video[index]["comment"],
                                shareText: video[index]["share"],
                                img: video[index]["img"],
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ));
        },
      ),
    );
  }
}
