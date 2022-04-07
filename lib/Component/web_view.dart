import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

import 'package:kids_learning/Component/appBar.dart';

class AppWebView extends StatefulWidget {
  final String title;
  final String url;
  AppWebView({
    required this.title,
    required this.url,
  });

  @override
  _AppWebViewState createState() => _AppWebViewState();
}

class _AppWebViewState extends State<AppWebView> {
  @override
  @override
  void initState() {
    // تشتغل مرة واحدة عند تشغيل الصفحة
    super.initState();
    if (Platform.isAndroid)
      WebView.platform = SurfaceAndroidWebView(); // تسرع النت
  }

  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBarSimple(
          title: widget.title,
        ),
        body: SafeArea(
          child: WebView(
            initialUrl: widget.url,
            javascriptMode:
                JavascriptMode.unrestricted, // يفعل لكبسات داخل الويب
          ),
        ));
  }
}
