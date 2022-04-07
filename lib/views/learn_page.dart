import 'package:flutter/material.dart';
import 'package:kids_learning/Component/card_learn.dart';
import 'package:kids_learning/Controller/c_learn.dart';
import 'package:kids_learning/Model/m_learn.dart';

class PageLearning extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView.builder(
        itemCount: ControllerLearn.dataLength,
        itemBuilder: (context, index) {
          ModelLearn edu = ControllerLearn.dataLearn.elementAt(index);
          return CardLearn(
            data: edu,
            title: edu.title,
            screen: edu.page,
          );
        },
      ),
    );
  }
}
