import 'package:animation_flutter/module/tween/screen/tween.screen.dart';
import 'package:flutter/material.dart';

class Application extends StatelessWidget {
  const Application({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      title: 'Application',
      home: TweenScreen(),
    );
  }
}
