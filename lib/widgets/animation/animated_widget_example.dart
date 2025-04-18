import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'dart:math' as math;

class AnimatedWidgetExample extends AnimatedWidget {
  const AnimatedWidgetExample({required AnimationController controller})
      : super(listenable: controller);

  Animation<double> get width => listenable as Animation<double>;

  @override
  Widget build(BuildContext context) {
    return Transform.rotate(
      angle: width.value * 1.0 * math.pi,
      child: Container(
        color: Colors.blueAccent,
        height: 100,
        width: 200,
      ),
    );
  }
}

class AnimatedWidgetDemo extends StatefulWidget {
  AnimatedWidgetDemo({super.key});

  @override
  State<AnimatedWidgetDemo> createState() => _AnimatedWidgetDemoState();
}

class _AnimatedWidgetDemoState extends State<AnimatedWidgetDemo>
    with TickerProviderStateMixin {
  late AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat();

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return AnimatedWidgetExample(controller: controller);
  }
}
