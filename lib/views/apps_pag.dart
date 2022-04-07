import 'package:flutter/material.dart';
import '/Component/card_Apps.dart';
import '/Controller/c_apps.dart';
import '/Model/m_learn.dart';

class PageApps extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: ListView.builder(
      itemCount: ControllerApps.dataLength,
      itemBuilder: (context, index) {
        ModellPages apps = ControllerApps.dataApps[index];
        return CardApps(data: apps);
      },
    ));
  }
}
