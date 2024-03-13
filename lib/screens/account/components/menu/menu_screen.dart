import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/screens/account/components/menu/components/container_with_search_bar_and_text.dart';
import 'package:insta_clone/screens/account/components/menu/components/how_you_use.dart';
import 'package:insta_clone/widget/reusable_row.dart';

import '../../../../common/colors.dart';

class MenuScreen extends StatelessWidget {
  const MenuScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white12,
      appBar: AppBar(
        backgroundColor: Colors.black,
        elevation: 0,
        leading: InkWell(
          onTap: () {
            Navigator.pop(context);
          },
          child: const Icon(
            Iconsax.arrow_left5,
            color: Colors.white,
          ),
        ),
        title: const Text(
          "Setting and Activity",
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: ListView(
        children: [
          const ContainerWithSearchBarAndText(),
          const SizedBox(
            height: 5,
          ),
          const HowYouUse(),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 180,
            width: double.infinity,
            color: black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Who can see your content",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.lock,
                      color: white,
                    ),
                    text: "Account privacy",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.flash_circle,
                      color: white,
                    ),
                    text: "Close Friends",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.block_flipped,
                      color: white,
                    ),
                    text: "Blocked",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.story,
                      color: white,
                    ),
                    text: "Hide story and live",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 300,
            width: double.infinity,
            color: black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "How others can interact with you",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.message_circle,
                      color: white,
                    ),
                    text: "Message and story replies",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.tag_user,
                      color: white,
                    ),
                    text: "Tag and mentions",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.message_text,
                      color: white,
                    ),
                    text: "Comments",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.share,
                      color: white,
                    ),
                    text: "Sharing",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.block,
                      color: white,
                    ),
                    text: "Restricted",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.information,
                      color: white,
                    ),
                    text: "Limited interaction",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.quote_down_circle,
                      color: white,
                    ),
                    text: "Hidden words",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.user_add,
                      color: white,
                    ),
                    text: "Follow and invite friends",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 180,
            width: double.infinity,
            color: black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "What you see",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.heart,
                      color: white,
                    ),
                    text: "Favorites",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.notifications_off_outlined,
                      color: white,
                    ),
                    text: "Muted accounts",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.image,
                      color: white,
                    ),
                    text: "Suggested content",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.favorite,
                      color: white,
                    ),
                    text: "Like and share count",
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Container(
            height: 220,
            width: double.infinity,
            color: black,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: <Widget>[
                  Align(
                    alignment: Alignment.topLeft,
                    child: Text(
                      "Your app and media",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.devices_1,
                      color: white,
                    ),
                    text: "Device permission",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.cloud_download_rounded,
                      color: white,
                    ),
                    text: "Archiving and downloading",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Icons.accessibility_sharp,
                      color: white,
                    ),
                    text: "Accessibility",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.language_circle,
                      color: white,
                    ),
                    text: "Language",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.align_horizontally,
                      color: white,
                    ),
                    text: "Data usage and media quality",
                  ),
                  ReuseAbleRow(
                    firstIcon: Icon(
                      Iconsax.devices_1,
                      color: white,
                    ),
                    text: "Website Permission",
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
