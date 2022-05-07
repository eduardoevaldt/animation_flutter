import 'package:flutter/material.dart';

class TweenScreen extends StatefulWidget {
  const TweenScreen({Key? key}) : super(key: key);

  @override
  State<TweenScreen> createState() => _TweenScreenState();
}

class _TweenScreenState extends State<TweenScreen>
    with SingleTickerProviderStateMixin {
  late Animation<double> animation;
  late AnimationController animationController;

  @override
  void initState() {
    super.initState();

    animationController = AnimationController(
      vsync: this,
      duration: const Duration(milliseconds: 2000),
    );
    animationController.drive(CurveTween(curve: Curves.bounceInOut));
    animation = Tween<double>(begin: 0, end: 300).animate(animationController);

    animation.addListener(() => setState(() => {}));
    animation.addStatusListener((status) {
      setState(() {
        if (status == AnimationStatus.completed) {
          animationController.reverse();
        } else if (status == AnimationStatus.dismissed) {
          animationController.forward();
        }
      });
    });

    animationController.forward();
  }

  @override
  void dispose() {
    animationController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Animation Demo"),
      ),
      body: Center(
        child: Container(
          height: animation.value,
          width: animation.value,
          color: Colors.blue,
        ),
      ),
    );
  }
}
