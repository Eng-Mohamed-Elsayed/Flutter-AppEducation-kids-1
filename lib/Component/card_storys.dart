import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kids_learning/Model/m_learn.dart';

class CardStory extends StatelessWidget {
  final ModellStory data;
  final String title;
  final Widget screen;
  CardStory({required this.data, required this.title, required this.screen});
  void _navigate(BuildContext context, Widget screen) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (_) {
          return screen;
        },
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        _navigate(context, screen);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: Colors.green[200],
        height: 100,
        child: Card(
            margin: EdgeInsets.symmetric(horizontal: 2, vertical: 2),
            color: Colors.green[50],
            elevation: 20,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(data.title,
                        style: GoogleFonts.elMessiri(
                            color: Colors.green[900],
                            fontSize: 30,
                            fontWeight: FontWeight.bold),
                        maxLines: 3,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
              ],
            )),
      ),
    );
  }
}
