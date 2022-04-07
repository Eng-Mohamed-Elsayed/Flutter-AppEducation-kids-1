import 'package:flutter/widgets.dart';

class ModelLearn {
  String image;
  String title;
  Widget page;
  ModelLearn({
    required this.image,
    required this.title,
    required this.page,
  });
}

class MaodellScreenStory {
  String image;
  MaodellScreenStory({required this.image});
}

class ModellPages {
  String imageUrl;
  String title;
  String pageUrl;
  ModellPages({
    required this.imageUrl,
    required this.title,
    required this.pageUrl,
  });
}

class ModellStory {
  String title;
  Widget page;
  ModellStory({required this.title, required this.page});
}
