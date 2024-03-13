import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/common/colors.dart';

import '../../data/story_json.dart';

class AddPostScreen extends StatelessWidget {
  const AddPostScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        backgroundColor: black,
        leading: const Center(
          child: Text(
            "X",
            style: TextStyle(
              fontSize: 20,
              color: white,
            ),
          ),
        ),
        title: const Text(
          "New Post",
          style: TextStyle(
            fontSize: 20,
            color: white,
          ),
        ),
        actions: [
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              "Next",
              style: TextStyle(
                fontSize: 18,
                color: Colors.blue,
              ),
            ),
          )
        ],
      ),
      body: Column(
        children: [
          Container(
            height: 250,
            width: double.infinity,
            decoration: BoxDecoration(
              color: Colors.white10,
              image: DecorationImage(
                fit: BoxFit.fitHeight,
                image: AssetImage(profile),
              ),
            ),
          ),
          SizedBox(
            width: double.infinity,
            height: 50,
            child: Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  const Row(
                    children: [
                      Text(
                        "Recents",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SizedBox(
                        width: 5,
                      ),
                      Icon(
                        Iconsax.arrow_down_1,
                        color: white,
                        size: 16,
                      ),
                    ],
                  ),
                  Row(
                    children: <Widget>[
                      Container(
                        width: 150,
                        height: 27,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white12,
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(1.0),
                          child: Row(
                            children: [
                              Icon(
                                Iconsax.simcard_2,
                                color: Colors.white70,
                              ),
                              Text(
                                "SELECT MULTIPLE",
                                style: TextStyle(color: Colors.white70),
                              )
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 5,
                      ),
                      Container(
                        height: 28,
                        width: 28,
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: Colors.white12,
                        ),
                        child: const Icon(
                          Iconsax.camera,
                          size: 20,
                          color: Colors.white70,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: GridView.builder(
              itemCount: photos.length,
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 4,
              ),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    decoration: BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage(photos[index]),
                      ),
                    ),
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
