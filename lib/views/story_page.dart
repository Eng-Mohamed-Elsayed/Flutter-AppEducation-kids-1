import 'package:flutter/material.dart';

import 'package:kids_learning/Component/card_storys.dart';

import 'package:kids_learning/Controller/c_story.dart';
import 'package:kids_learning/Model/m_learn.dart';

class PageStory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerStory.dataLength,
        itemBuilder: (context, index) {
          ModellStory edu = ControllerStory.datastory.elementAt(index);
          return CardStory(data: edu, title: edu.title, screen: edu.page);
        },
      ),
    );
  }
}
