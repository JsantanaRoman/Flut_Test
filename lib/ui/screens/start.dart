// import 'dart:io'; dosent work on web
import 'package:flutter/foundation.dart';

import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flut_test/ui/screens/sample_webview.dart';
import 'package:lottie/lottie.dart';
import 'package:url_launcher/url_launcher.dart';

import '../widgets/sample_button.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  static String screenID = 'StartScreen';
  static const String url = 'https://blog.playstation.com/';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Gaming Central'),
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: <Widget>[
              Expanded(
                child: Lottie.asset(
                  'assets/animations/controller.json',
                  width: 200,
                  height: 200,
                  fit: BoxFit.fill,
                ),
              ),
              SampleButton(
                text: "Log in",
                onPressed: () async {
                  if (defaultTargetPlatform == TargetPlatform.iOS ||
                      defaultTargetPlatform == TargetPlatform.android) {
                    GoRouter.of(context)
                        .pushNamed(WebviewSampleScreen.screenID);
                  } else {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                },
              ),
              const SizedBox(height: 12.0),
              SampleButton(
                text: "Create an Account",
                onPressed: () async {
                  if (defaultTargetPlatform == TargetPlatform.iOS ||
                      defaultTargetPlatform == TargetPlatform.android) {
                    GoRouter.of(context)
                        .pushNamed(WebviewSampleScreen.screenID);
                  } else {
                    if (await canLaunch(url)) {
                      await launch(url);
                    } else {
                      throw 'Could not launch $url';
                    }
                  }
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
