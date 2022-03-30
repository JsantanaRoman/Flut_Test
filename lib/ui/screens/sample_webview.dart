import 'dart:io';

import 'package:webview_flutter/webview_flutter.dart';
import 'package:flutter/material.dart';

class WebviewSampleScreen extends StatefulWidget {
  const WebviewSampleScreen({Key? key}) : super(key: key);
  static String screenID = "WebviewSampleScreenScreen";

  @override
  State<WebviewSampleScreen> createState() => _WebviewSampleScreenState();
}

class _WebviewSampleScreenState extends State<WebviewSampleScreen> {
  @override
  void initState() {
    super.initState();
    // Enable virtual display.
    if (Platform.isAndroid) WebView.platform = AndroidWebView();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF9cd0a8),
      appBar: AppBar(
        title: const Text("hello World"),
        backgroundColor: const Color(0xFF9cd0a8),
      ),
      body: const WebView(
        initialUrl: 'https://blog.playstation.com/',
      ),
    );
  }
}
