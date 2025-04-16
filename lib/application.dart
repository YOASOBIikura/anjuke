import 'package:anjuke/pages/login.dart';
import 'package:anjuke/routes.dart';
import 'package:fluro/fluro.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({super.key});

  @override
  Widget build(BuildContext context) {
    final router = FluroRouter();
    Routes.configureRoutes(router);
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.cyanAccent,
          brightness: Brightness.light,
        ),
      ),
      onGenerateRoute: router.generator,
    );
  }
}
