import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedBuilderExample extends StatefulWidget {
  const AnimatedBuilderExample({super.key});

  @override
  State<AnimatedBuilderExample> createState() => _AnimatedBuilderExampleState();
}

class _AnimatedBuilderExampleState extends State<AnimatedBuilderExample>
    with TickerProviderStateMixin {
  late Animation heartBeat;
  late AnimationController controller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 1));

    controller.forward();

    heartBeat = Tween(begin: 180.0, end: 160.0).animate(
        CurvedAnimation(parent: controller, curve: Curves.easeOutBack));

    controller.addStatusListener((status) {
      if (status == AnimationStatus.completed) controller.repeat();
    });
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedBuilder(
      animation: heartBeat,
      builder: (BuildContext context, Widget? child) {
        return Container(
          child: Icon(
            Icons.favorite,
            color: Colors.blue,
            size: heartBeat.value.toDouble(),
          ),
        );
      },
    );
  }
}
