import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class AppBarSimple extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  AppBarSimple({this.title = "تعلم معنا"});
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.orange.shade600,
      title: Text(
        title,
        style: GoogleFonts.elMessiri(
            fontStyle: FontStyle.italic,
            fontSize: 30,
            shadows: [
              Shadow(
                offset: Offset(1.5, 1.5),
                color: Colors.white,
                blurRadius: 3,
              )
            ]),
      ),
      centerTitle: true,
      actions: [
        //app icon
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundImage: AssetImage("assets/logo/rocket.png"),
            radius: 25,
          ),
        )
      ],
      //leading: Icon(Icons.menu, color: Colors.black),
    );
  }

  @override
  Size get preferredSize => Size.fromHeight(AppBar().preferredSize.height);
}
