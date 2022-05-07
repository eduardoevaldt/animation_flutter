import 'package:animation_flutter/module/animations/animations.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Application',
      theme: ThemeData(
        primaryColor: Colors.green,
        primarySwatch: Colors.green,
        appBarTheme: const AppBarTheme(
          color: Colors.green,
        ),
      ),
      home: const AnimationScreen(),
    );
  }
}
