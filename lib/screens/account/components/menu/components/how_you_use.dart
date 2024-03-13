import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/colors.dart';
import '../../../../../widget/reusable_row.dart';

class HowYouUse extends StatelessWidget {
  const HowYouUse({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 220,
      width: double.infinity,
      color: black,
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: <Widget>[
            Align(
              alignment: Alignment.topLeft,
              child: Text(
                "How you use Instagram",
                style: TextStyle(color: Colors.grey),
              ),
            ),
            ReuseAbleRow(
              firstIcon: Icon(
                Iconsax.archive_minus,
                color: white,
              ),
              text: "Saved",
            ),
            ReuseAbleRow(
              firstIcon: Image(
                width: 20,
                height: 20,
                fit: BoxFit.cover,
                color: white,
                image: AssetImage(
                  "assets/images/clock_arrow.png",
                ),
              ),
              text: "Archive",
            ),
            ReuseAbleRow(
              firstIcon: Icon(
                Iconsax.activity,
                color: white,
              ),
              text: "Your activity",
            ),
            ReuseAbleRow(
              firstIcon: Icon(
                Iconsax.notification,
                color: white,
              ),
              text: "Notification",
            ),
            ReuseAbleRow(
              firstIcon: Icon(
                Iconsax.clock,
                color: white,
              ),
              text: "Time spent",
            ),
          ],
        ),
      ),
    );
  }
}
