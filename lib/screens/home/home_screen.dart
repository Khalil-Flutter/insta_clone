import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/common/colors.dart';
import 'package:insta_clone/screens/home/component/body.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: black,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.black,
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            Text(
              "Instagram",
              style: TextStyle(
                fontFamily: 'Pacifico-Regular',
                color: Colors.white,
                fontSize: 25,
              ),
            ),
            Row(
              children: [
                Icon(
                  Iconsax.heart,
                  size: 25,
                  color: Colors.white,
                ),
                SizedBox(
                  width: 8,
                ),
                Icon(
                  Iconsax.send_2,
                  size: 25,
                  color: Colors.white,
                ),
              ],
            ),
          ],
        ),
      ),
      body: Body(),
    );
  }
}
