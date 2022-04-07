import 'package:flutter/material.dart';

import '/Model/m_learn.dart';

class CardScreenStory extends StatelessWidget {
  final MaodellScreenStory data;
  CardScreenStory({required this.data});
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        height: 500,
        child: Card(
          margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          elevation: 10,
          clipBehavior: Clip.antiAliasWithSaveLayer,
          child: Column(
            children: [
              Expanded(
                flex: 2,
                child: Image.asset(
                  data.image,
                  fit: BoxFit.fill,
                  width: double.infinity,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
