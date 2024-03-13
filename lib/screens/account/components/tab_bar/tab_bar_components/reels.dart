import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/colors.dart';

class Reels extends StatefulWidget {
  const Reels({super.key});

  @override
  State<Reels> createState() => _ReelsState();
}

class _ReelsState extends State<Reels> {
  List userPost = [
    {
      "post": "assets/images/15.jpeg",
      "count": "20",
    },
    {
      "post": "assets/images/16.jpeg",
      "count": "7",
    },
    {
      "post": "assets/images/17.jpeg",
      "count": "12",
    },
    {
      "post": "assets/images/18.jpeg",
      "count": "22",
    },
    {
      "post": "assets/images/19.jpeg",
      "count": "90",
    },
    {
      "post": "assets/images/20.jpeg",
      "count": "80",
    },
    {
      "post": "assets/images/21.jpeg",
      "count": "70",
    },
    {
      "post": "assets/images/22.jpeg",
      "count": "60",
    },
    {
      "post": "assets/images/23.jpeg",
      "count": "50",
    },
    {
      "post": "assets/images/24.jpeg",
      "count": "43",
    },
    {
      "post": "assets/images/25.jpeg",
      "count": "16",
    },
    {
      "post": "assets/images/26.jpeg",
      "count": "26",
    },
    {
      "post": "assets/images/27.jpeg",
      "count": "30",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: userPost.length,
      gridDelegate:
          const SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(2.0),
          child: Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(userPost[index]["post"]),
                  ),
                ),
              ),
              Positioned(
                bottom: 0,
                child: Row(
                  children: [
                    Icon(
                      Iconsax.play,
                      color: white,
                      size: 15,
                    ),
                    Text(
                      userPost[index]["count"],
                      style: TextStyle(
                        color: white,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}
