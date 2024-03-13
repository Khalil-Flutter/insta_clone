class UserModel {
  UserModel(this.stories, this.userName, this.imageUrl);

  final List<StoryModel> stories;
  final String userName;
  final String imageUrl;
}

class StoryModel {
  StoryModel(this.imageUrl);

  final String imageUrl;
}

String profile = "assets/images/1.jpg";
String name = "mkhalilurrehman";

// stories
List stories = [
  {
    "id": 1,
    "img": "assets/images/2.jpeg",
    "name": "itxx._.me._.hamza",
  },
  {
    "id": 2,
    "img": "assets/images/3.jpeg",
    "name": "princemuhammad_official",
  },
  {
    "id": 3,
    "img": "assets/images/4.jpeg",
    "name": "muneebwasikhan6",
  },
  {
    "id": 4,
    "img": "assets/images/5.jpeg",
    "name": "omer_jahangeer",
  },
  {
    "id": 5,
    "img": "assets/images/6.jpeg",
    "name": "khanibrar89",
  }
];

// Story View Screen Data

final users = [
  UserModel(
    [
      StoryModel("assets/images/20.jpeg"),
      StoryModel("assets/images/21.jpeg"),
    ],
    "itxx._.me._.hamza",
    "assets/images/2.jpeg",
  ),
  UserModel(
    [
      StoryModel("assets/images/22.jpeg"),
    ],
    "princemuhammad_official",
    "assets/images/3.jpeg",
  ),
  UserModel(
    [
      StoryModel(
        'assets/images/23.jpeg',
      ),
      StoryModel(
        "assets/images/24.jpeg",
      ),
      StoryModel(
        "assets/images/25.jpeg",
      ),
    ],
    "muneebwasikhan6",
    "assets/images/4.jpeg",
  ),
  UserModel(
    [
      StoryModel(
        'assets/images/26.jpeg',
      ),
      StoryModel(
        "assets/images/27.jpeg",
      ),
      StoryModel(
        "assets/images/28.jpeg",
      ),
    ],
    "omer_jahangeer",
    "assets/images/5.jpeg",
  ),
  UserModel(
    [
      StoryModel(
        'assets/images/29.jpeg',
      ),
      StoryModel(
        "assets/images/30.jpeg",
      ),
      StoryModel(
        "assets/images/31.jpeg",
      ),
    ],
    "khanibrar89",
    "assets/images/6.jpeg",
  ),
];
