import 'package:flutter/material.dart';
import 'package:kids_learning/Component/appBar.dart';
import 'package:kids_learning/Component/card_Screen_story.dart';
import 'package:kids_learning/Controller/c_screen_story.dart';
import 'package:kids_learning/Model/m_learn.dart';

class Story1 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'الإسراء و المعراج',
      ),
      body: ListView.builder(
        itemCount: ControllerScreenStory1.dataLength,
        itemBuilder: (context, index) {
          MaodellScreenStory story =
              ControllerScreenStory1.dataStory.elementAt(index);
          return CardScreenStory(
            data: story,
          );
        },
      ),
    );
  }
}

class Story2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'مولد الحبيب',
      ),
      body: ListView.builder(
        itemCount: ControllerScreenStory2.dataLength,
        itemBuilder: (context, index) {
          MaodellScreenStory story =
              ControllerScreenStory2.dataStory.elementAt(index);
          return CardScreenStory(
            data: story,
          );
        },
      ),
    );
  }
}

class Story3 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'أركان الإسلام',
      ),
      body: ListView.builder(
        itemCount: ControllerScreenStory3.dataLength,
        itemBuilder: (context, index) {
          MaodellScreenStory story =
              ControllerScreenStory3.dataStory.elementAt(index);
          return CardScreenStory(
            data: story,
          );
        },
      ),
    );
  }
}

class Story4 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'مفتاح التفوق',
      ),
      body: Container(
        child: Image.network(
          'http://belarabyapps.com/wp-content/uploads/2018/05/1-7.jpg',
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}

///////////////////////////////////////
class Story5 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'محمد نبينا',
      ),
      body: Container(
        child: Image.asset(
          'assets/images/story5.jpg',
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}

///////////////////////////////////////////
class Story6 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'قصة الأذان',
      ),
      body: Container(
        child: Image.asset(
          'assets/images/story6.jpg',
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}

///////////////////////////////////////////////////////////
class Story7 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarSimple(
        title: 'قصة النحلة و الفراشة',
      ),
      body: Container(
        child: Image.asset(
          'assets/images/story7.jpg',
          width: double.infinity,
          height: double.infinity,
        ),
      ),
    );
  }
}
