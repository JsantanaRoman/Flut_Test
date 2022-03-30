import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:flut_test/ui/screens/sample_webview.dart';
import 'package:flut_test/ui/screens/start.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  static const String title = 'GoRouter Example: Declarative Routes';

  @override
  Widget build(BuildContext context) => MaterialApp.router(
        routeInformationParser: _router.routeInformationParser,
        routerDelegate: _router.routerDelegate,
        title: title,
      );

  final GoRouter _router = GoRouter(
    routes: <GoRoute>[
      GoRoute(
        name: StartScreen.screenID,
        path: '/',
        builder: (BuildContext context, GoRouterState state) =>
            const StartScreen(),
      ),
      GoRoute(
        name: WebviewSampleScreen.screenID,
        path: '/${WebviewSampleScreen.screenID}',
        builder: (BuildContext context, GoRouterState state) =>
            const WebviewSampleScreen(),
      ),
    ],
  );
}
