import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../common/colors.dart';

class ContainerWithSearchBarAndText extends StatelessWidget {
  const ContainerWithSearchBarAndText({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 170,
      width: double.infinity,
      color: black,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: <Widget>[
            Container(
              height: 40,
              width: 350,
              decoration: BoxDecoration(
                color: Colors.white24,
                borderRadius: BorderRadius.circular(15),
              ),
              child: const Padding(
                padding: EdgeInsets.all(8.0),
                child: Row(
                  children: <Widget>[
                    Icon(
                      Iconsax.search_normal,
                      color: Colors.grey,
                      size: 20,
                    ),
                    SizedBox(
                      width: 5,
                    ),
                    Text(
                      "Search",
                      style: TextStyle(
                        color: Colors.grey,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "Your account",
                    style: TextStyle(
                      color: Colors.grey,
                      fontWeight: FontWeight.w700,
                    ),
                  ),
                  Row(
                    children: [
                      Image(
                        image: AssetImage("assets/images/meta_icon.png"),
                        width: 25,
                        height: 15,
                        fit: BoxFit.cover,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        "Meta",
                        style: TextStyle(color: Colors.blueGrey),
                      ),
                    ],
                  )
                ],
              ),
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                width: double.infinity,
                height: 40,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: <Widget>[
                    Center(
                      child: Icon(
                        Iconsax.profile_circle,
                        color: white,
                        size: 30,
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: <Widget>[
                        Text(
                          "Account Center",
                          style: TextStyle(color: white),
                        ),
                        Text(
                          "Password, security, personal details,ads",
                          style: TextStyle(color: Colors.white70),
                        ),
                      ],
                    ),
                    Icon(
                      size: 20,
                      Icons.arrow_forward_ios,
                      color: white,
                    ),
                  ],
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 10),
              child: RichText(
                maxLines: 2,
                text: const TextSpan(
                  children: [
                    TextSpan(
                      text:
                          "Manage your connected experience and account setting across Meta technology. ",
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 13,
                      ),
                    ),
                    TextSpan(
                      text: "Learn more",
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
