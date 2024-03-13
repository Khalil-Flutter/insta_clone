import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/screens/account/components/heighlights_story.dart';

import '../../../common/colors.dart';
import '../../../data/story_json.dart';

class Body extends StatefulWidget {
  const Body({super.key});

  @override
  State<Body> createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        SizedBox(
          width: double.infinity,
          height: 100,
          child: Row(
            children: <Widget>[
              Stack(
                children: [
                  CircleAvatar(
                    backgroundImage: AssetImage(profile),
                    radius: 45,
                  ),
                  Positioned(
                    bottom: 04,
                    right: 04,
                    child: Container(
                      height: 22,
                      width: 22,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.blue,
                      ),
                      child: const Icon(
                        Iconsax.add,
                        size: 19,
                        color: white,
                      ),
                    ),
                  ),
                ],
              ),
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25),
                child: Row(
                  children: [
                    NoFollowers(
                      number: "35",
                      text: "posts",
                    ),
                    SizedBox(width: 20),
                    NoFollowers(
                      number: "360",
                      text: "followers",
                    ),
                    SizedBox(width: 20),
                    NoFollowers(
                      number: "604",
                      text: "following",
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 105,
          child: const Padding(
            padding: EdgeInsets.symmetric(horizontal: 8),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "محمد خلیل الرحمٰن",
                  style: TextStyle(
                    color: white,
                  ),
                ),
                Text(
                  "👩‍💻Flutter Developer",
                  style: TextStyle(
                    color: white,
                  ),
                ),
                Text(
                  "🤗 Math + Logic = Magic",
                  style: TextStyle(
                    color: white,
                  ),
                ),
                Text(
                  "🏆Behind every successful man a lot of failed years #elonmusk",
                  style: TextStyle(
                    color: white,
                  ),
                ),
              ],
            ),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: <Widget>[
              Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Center(
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(color: white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 150,
                height: 25,
                decoration: BoxDecoration(
                    color: Colors.white12,
                    borderRadius: BorderRadius.circular(10)),
                child: const Center(
                  child: Text(
                    "Share Profile",
                    style: TextStyle(
                      color: white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
              const SizedBox(
                width: 5,
              ),
              Container(
                width: 30,
                height: 25,
                decoration: BoxDecoration(
                  color: Colors.white12,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.person_add_outlined,
                  color: white,
                  size: 18,
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 8),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              HighlightesStory(
                text: "Highlights",
                img: profile,
              ),
              Padding(
                padding: const EdgeInsets.only(right: 20, bottom: 10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      height: 68,
                      width: 68,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        gradient: LinearGradient(
                          begin: Alignment.topCenter,
                          end: Alignment.bottomCenter,
                          colors: [
                            Colors.white,
                            Colors.white,
                          ],
                        ),
                      ),
                      child: Container(
                        width: 60,
                        height: 60,
                        margin: const EdgeInsets.all(3),
                        decoration: BoxDecoration(
                          color: Colors.black,
                          border: Border.all(
                            color: Colors.black,
                            width: 3,
                          ),
                          shape: BoxShape.circle,
                        ),
                        child: const Icon(
                          Icons.add,
                          color: Colors.white,
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const SizedBox(
                      width: 70,
                      child: Center(
                        child: Text(
                          "New",
                          overflow: TextOverflow.ellipsis,
                          style: TextStyle(color: white),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class NoFollowers extends StatelessWidget {
  const NoFollowers({
    super.key,
    required this.number,
    required this.text,
  });

  final String number;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          number,
          style: const TextStyle(
            color: white,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        Text(
          text,
          style: const TextStyle(
            color: white,
            fontWeight: FontWeight.w400,
          ),
        ),
      ],
    );
  }
}
