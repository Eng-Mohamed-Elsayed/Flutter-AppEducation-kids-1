import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class DrawerCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          SizedBox(
            width: double.infinity,
            child: DrawerHeader(
              decoration: BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: Colors.orange.shade600,
                    width: 10,
                  ),
                ),
              ),
              child: Image.asset(
                'assets/images/learn1.jpg',
                width: double.infinity,
                fit: BoxFit.fill,
              ),
            ),
          ),
          ListTile(
            title: Center(
              child: Text('kids Learning App',
                  style: GoogleFonts.adamina(
                      fontSize: 25,
                      color: Colors.orange[800],
                      shadows: [
                        Shadow(
                            offset: Offset(1, 1),
                            blurRadius: 10,
                            color: Colors.yellow)
                      ])),
            ),
          ),
          ListTile(
            title: Center(
              child: Column(
                children: [
                  Text(
                    'في هذا التطبيق يمكنه مساعدة الأطفال على تعلم المفاهيم الأساسية لأعمارهم بمرح ',
                    style: GoogleFonts.adamina(fontSize: 15, height: 2),
                  ),
                  Text(
                      'الصفحة الأولى تعلم الحروف الأبجدية والألوان والأرقام وصوت الحيواناتز'),
                  Text(
                      ' الصفحة الثانية والرابعة تقدم قائمة بالمواقع التي تعطي محتوى لطيفا للتعلم.'),
                  Text(
                      ' الصفحة الثالثة توفر قصصًا ومعلومات ، يمكن أن تساعد الأطفال على القراءة.')
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
