import 'package:expandable_text/expandable_text.dart';
import 'package:flutter/material.dart';

import '../../../common/colors.dart';

class ReelsDownBar extends StatelessWidget {
  const ReelsDownBar({
    super.key,
    required this.text,
    required this.img,
    required this.name,
    required this.tile,
  });

  final String text;
  final String img;
  final String name;
  final String tile;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        children: <Widget>[
          SizedBox(
            height: 35,
            child: Row(
              children: <Widget>[
                Container(
                  width: 35,
                  height: 35,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20),
                    border: Border.all(
                      color: white,
                    ),
                  ),
                  child: Container(
                    height: 30,
                    width: 30,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        fit: BoxFit.cover,
                        image: AssetImage(img),
                      ),
                    ),
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                Text(
                  name,
                  style: const TextStyle(
                    color: white,
                  ),
                ),
                const SizedBox(
                  width: 5,
                ),
                Container(
                  width: 100,
                  height: 30,
                  decoration: BoxDecoration(
                    shape: BoxShape.rectangle,
                    color: Colors.transparent,
                    borderRadius: BorderRadius.circular(10),
                    border: Border.all(
                      width: 1,
                      color: white,
                    ),
                  ),
                  child: const Center(
                    child: Text(
                      "Follow",
                      style: TextStyle(color: white),
                    ),
                  ),
                ),
              ],
            ),
          ),
          ExpandableText(
            text,
            expandText: "more",
            collapseText: "less",
            maxLines: 2,
            collapseOnTextTap: true,
            expandOnTextTap: true,
            style: const TextStyle(color: white),
          ),
          Row(
            children: [
              Container(
                width: 20,
                height: 20,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const Icon(
                  Icons.volume_up,
                  color: white,
                  size: 15,
                ),
              ),
              const SizedBox(
                width: 10,
              ),
              Container(
                height: 20,
                width: 140,
                decoration: BoxDecoration(
                  color: Colors.white10,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Row(
                  children: [
                    const Icon(
                      Icons.music_note_sharp,
                      size: 15,
                      color: white,
                    ),
                    Text(
                      "$tile.Orignal audio",
                      style: const TextStyle(
                        color: white,
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
