import 'dart:io';

import 'package:flutter/material.dart';
import 'package:webview_flutter/webview_flutter.dart';

class AboutMePage extends StatefulWidget {
  @override
  AboutMePageState createState() => AboutMePageState();
}

class AboutMePageState extends State<AboutMePage> {
  @override
  void initState() {
    super.initState();
    if (Platform.isAndroid) WebView.platform = SurfaceAndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: WebView(
        initialUrl: 'https://github.com/kindaniel',
      ),
    );
  }
}
