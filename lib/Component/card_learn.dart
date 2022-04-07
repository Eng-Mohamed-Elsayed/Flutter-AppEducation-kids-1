import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'package:kids_learning/Model/m_learn.dart';

class CardLearn extends StatelessWidget {
  final ModelLearn data;
  final String title;
  final Widget screen;
  CardLearn({required this.data, required this.title, required this.screen});
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
        print("My");
        _navigate(context, screen);
      },
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 5, vertical: 5),
        color: Colors.orange[200],
        height: 100,
        child: Card(
            margin: EdgeInsets.symmetric(horizontal: 3, vertical: 3),
            color: Colors.orange[50],
            elevation: 20,
            clipBehavior: Clip.antiAliasWithSaveLayer,
            child: Row(
              children: [
                Expanded(
                  flex: 2,
                  child: Center(
                    child: Text(data.title,
                        style: GoogleFonts.aBeeZee(
                            color: Colors.orange[900],
                            fontSize: 20,
                            fontWeight: FontWeight.bold),
                        maxLines: 2,
                        overflow: TextOverflow.ellipsis),
                  ),
                ),
                Expanded(
                  child: Image.asset(data.image, height: 100, fit: BoxFit.fill),
                ),
                SizedBox(width: 10),
              ],
            )),
      ),
    );
  }
}
