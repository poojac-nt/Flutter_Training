import 'package:flutter/material.dart';

class DecoratedBoxAnimationExample extends StatefulWidget {
  const DecoratedBoxAnimationExample({super.key});

  @override
  State<DecoratedBoxAnimationExample> createState() =>
      _DecoratedBoxAnimationExampleState();
}

class _DecoratedBoxAnimationExampleState
    extends State<DecoratedBoxAnimationExample> with TickerProviderStateMixin {
  final DecorationTween tween = DecorationTween(
      begin: BoxDecoration(
          color: Colors.white,
          border: Border.all(style: BorderStyle.none),
          borderRadius: BorderRadius.circular(60),
          boxShadow: [
            BoxShadow(
                color: const Color(0x66666666),
                spreadRadius: 3.0,
                blurRadius: 10.0,
                offset: Offset(0, 1))
          ]),
      end: BoxDecoration(
        color: Colors.white,
        border: Border.all(style: BorderStyle.none),
        borderRadius: BorderRadius.zero,
      ));

  late final AnimationController controller =
      AnimationController(vsync: this, duration: Duration(seconds: 2))
        ..repeat(reverse: true);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DecoratedBoxTransition(
          decoration: tween.animate(controller),
          child: Container(
            height: 200,
            width: 200,
            child: Center(
              child: FlutterLogo(
                size: 50,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
