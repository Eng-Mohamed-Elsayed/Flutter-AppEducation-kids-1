import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:flutter/material.dart';

class CustomNavigationBar extends StatelessWidget {
  final int indexpage;
  final Function(int) onClock;
  CustomNavigationBar({required this.indexpage, required this.onClock});
  @override
  Widget build(BuildContext context) {
    return CurvedNavigationBar(
      color: Colors.orange.shade600,
      backgroundColor: Colors.white,
      items: [
        Icon(
          Icons.auto_awesome,
          color: Colors.white,
        ),
        Icon(
          Icons.ondemand_video_rounded,
          color: Colors.white,
        ),
        Icon(
          Icons.auto_stories,
          color: Colors.white,
        ),
        Icon(
          Icons.now_widgets,
          color: Colors.white,
        ),
      ],
      onTap: onClock,
    );
  }
}
