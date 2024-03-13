import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../common/colors.dart';
import '../../data/story_json.dart';

class PostItemWidget extends StatelessWidget {
  const PostItemWidget({
    super.key,
    required this.profileImg,
    required this.name,
    required this.postImg,
    required this.caption,
    required this.isLoved,
    required this.isVerified,
    required this.likedBy,
    required this.viewCount,
    required this.dayAgo,
  });

  final String profileImg;
  final String name;
  final String postImg;
  final String caption;
  final bool isLoved;
  final bool isVerified;
  final String likedBy;
  final String viewCount;
  final String dayAgo;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Column(
        children: <Widget>[
          Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 10,
              vertical: 8,
            ),
            child: Row(
              children: [
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    image: DecorationImage(
                      image: AssetImage(profileImg),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                const SizedBox(
                  width: 8,
                ),
                isVerified
                    ? const CircleAvatar(
                        radius: 7,
                        backgroundColor: Color.fromARGB(255, 72, 171, 252),
                        child: Icon(
                          Icons.check,
                          size: 10,
                          color: black,
                        ),
                      )
                    : const SizedBox(),
                const Spacer(),
                const Icon(
                  Icons.more_vert,
                  color: Colors.white,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8),
            child: Container(
              height: 350,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage(
                    postImg,
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
            child: Row(
              children: <Widget>[
                isLoved
                    ? const Icon(
                        Icons.favorite,
                        color: Colors.red,
                        size: 27,
                      )
                    : const Icon(
                        Iconsax.heart,
                        color: Colors.white,
                        size: 27,
                      ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Iconsax.message,
                  color: Colors.white,
                  size: 27,
                ),
                const SizedBox(
                  width: 5,
                ),
                const Icon(
                  Iconsax.send_2,
                  color: Colors.white,
                  size: 27,
                ),
                const Spacer(),
                const Icon(
                  Iconsax.archive_tick,
                  color: Colors.white,
                  size: 27,
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    const TextSpan(
                      text: "Liked by ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    TextSpan(
                      text: "$likedBy ",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    const TextSpan(
                      text: "and ",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                      ),
                    ),
                    const TextSpan(
                      text: "Other",
                      style: TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: RichText(
                text: TextSpan(
                  children: [
                    TextSpan(
                      text: "$name ",
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w700,
                      ),
                    ),
                    TextSpan(
                      text: caption,
                      style: const TextStyle(
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Align(
            alignment: Alignment.topLeft,
            child: Padding(
              padding: const EdgeInsets.only(left: 8),
              child: Text(
                "View $viewCount comments",
                style: TextStyle(
                  color: white.withOpacity(0.5),
                  fontSize: 15,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Container(
                      width: 30,
                      height: 30,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        image: DecorationImage(
                          image: AssetImage(profile),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    Text(
                      "Add a comment...",
                      style: TextStyle(
                        color: white.withOpacity(0.5),
                        fontSize: 15,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ],
                ),
                Row(
                  children: [
                    const Text(
                      "😂",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    const Text(
                      "😍",
                      style: TextStyle(fontSize: 20),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                    Icon(
                      Icons.add_circle,
                      color: white.withOpacity(0.5),
                      size: 18,
                    )
                  ],
                )
              ],
            ),
          ),
          const SizedBox(
            height: 12,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15, right: 15),
            child: Text(
              dayAgo,
              style: TextStyle(
                color: white.withOpacity(0.5),
                fontSize: 15,
                fontWeight: FontWeight.w500,
              ),
            ),
          )
        ],
      ),
    );
  }
}
