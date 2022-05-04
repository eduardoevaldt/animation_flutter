// ignore_for_file: unused_import

import 'package:flutter/material.dart';
import 'builder_animation.dart';
import 'xyz_transition.dart';
import 'tween_animation.dart';
import 'animated_xyz.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Animation Demo',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: Home(),
    );
  }
}

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        // define appbar here
        appBar: AppBar(
          // add tabs to the app
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Ani..XYZ'),
              Tab(text: 'Tween'),
              Tab(text: 'XYZTra..'),
              Tab(text: 'Builder'),
            ],
          ),
          title: const Text('GeeksforGeeks'),
        ),
        body: TabBarView(
          // animations
          children: [
            //AnimatedXYZ(),
            //TweenAnimation(),
            //XYZTransition(),
            //BuilderAnimation(),
          ],
        ),
      ),
    );
  }
}
