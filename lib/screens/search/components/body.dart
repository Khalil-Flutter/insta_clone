import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:insta_clone/data/search_json.dart';
import 'package:insta_clone/widget/c_s_i_w/category_search_item_widget.dart';

class Body extends StatelessWidget {
  const Body({super.key});

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.sizeOf(context);
    return SingleChildScrollView(
      child: SafeArea(
        child: Column(
          children: <Widget>[
            Container(
              width: 350,
              height: 40,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                color: Colors.white12,
              ),
              child: Center(
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: <Widget>[
                      Icon(
                        Iconsax.search_normal,
                        color: Colors.grey,
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Text(
                        "Search",
                        style: TextStyle(color: Colors.grey, fontSize: 15),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                horizontal: 4,
              ),
              child: SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                    children: List.generate(
                      searchCategories.length,
                      (index) {
                        return CategorySearchItemWidget(
                            name: searchCategories[index]);
                      },
                    ),
                  ),
                ),
              ),
            ),
            Wrap(
              spacing: 1,
              runSpacing: 1,
              children: List.generate(searchImages.length, (index) {
                return Container(
                  width: (size.width - 3) / 3,
                  height: (size.height - 3) / 3,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(searchImages[index]),
                      fit: BoxFit.cover,
                    ),
                  ),
                );
              }),
            ),
          ],
        ),
      ),
    );
  }
}
