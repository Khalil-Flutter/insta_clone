import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../common/colors.dart';

class ReelsSideBar extends StatelessWidget {
  const ReelsSideBar({
    super.key,
    required this.likeText,
    required this.commentText,
    required this.shareText,
    required this.img,
  });
  final String likeText;
  final String commentText;
  final String shareText;
  final String img;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.end,
      children: <Widget>[
        LikeCommentShare(
          text: likeText,
          icon: Iconsax.heart,
        ),
        const SizedBox(
          height: 10,
        ),
        LikeCommentShare(
          text: commentText,
          icon: Iconsax.message,
        ),
        const SizedBox(
          height: 10,
        ),
        LikeCommentShare(
          text: shareText,
          icon: Iconsax.send_2,
        ),
        const SizedBox(
          height: 10,
        ),
        const Icon(
          Icons.more_vert_outlined,
          color: white,
        ),
        const SizedBox(
          height: 10,
        ),
        Container(
          width: 35,
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4),
            border: Border.all(
              color: white,
            ),
          ),
          child: Container(
            height: 30,
            width: 30,
            margin: const EdgeInsets.all(2),
            decoration: BoxDecoration(
              image: DecorationImage(
                fit: BoxFit.cover,
                image: AssetImage(img),
              ),
            ),
          ),
        ),
        const SizedBox(
          height: 10,
        ),
      ],
    );
  }
}

class LikeCommentShare extends StatelessWidget {
  const LikeCommentShare({super.key, required this.text, required this.icon});

  final String text;
  final IconData icon;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Icon(
          icon,
          color: white,
        ),
        const SizedBox(
          height: 2,
        ),
        Text(
          text,
          style: const TextStyle(color: white),
        ),
      ],
    );
  }
}
