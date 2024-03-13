import 'package:flutter/material.dart';

class TaggedPosts extends StatefulWidget {
  const TaggedPosts({super.key});

  @override
  State<TaggedPosts> createState() => _TaggedPostsState();
}

class _TaggedPostsState extends State<TaggedPosts> {
  List<String> userPost = [
    "assets/images/28.jpeg",
    "assets/images/29.jpeg",
    "assets/images/30.jpeg",
    "assets/images/31.jpeg",
    "assets/images/32.jpeg",
    "assets/images/33.jpeg",
    "assets/images/34.jpeg",
    "assets/images/35.jpeg",
    "assets/images/36.jpeg",
    "assets/images/37.jpeg",
    "assets/images/38.jpeg",
    "assets/images/39.jpeg",
    "assets/images/40.jpeg",
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
          child: Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage(userPost[index]),
              ),
            ),
          ),
        );
      },
    );
  }
}
