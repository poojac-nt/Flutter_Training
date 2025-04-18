import 'package:flutter/material.dart';

class DefaultStyleTransitionExample extends StatefulWidget {
  const DefaultStyleTransitionExample({super.key});

  @override
  State<DefaultStyleTransitionExample> createState() =>
      _DefaultStyleTransitionExampleState();
}

class _DefaultStyleTransitionExampleState
    extends State<DefaultStyleTransitionExample> with TickerProviderStateMixin {
  late final AnimationController controller;
  late TextStyleTween textStyleTween;
  late Cubic curvedAnimation;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    controller =
        AnimationController(vsync: this, duration: Duration(seconds: 2))
          ..repeat(reverse: true);
    curvedAnimation = Curves.easeOutBack;
    textStyleTween = TextStyleTween(
      begin: TextStyle(
          fontSize: 40, color: Colors.blue, fontWeight: FontWeight.w900),
      end: TextStyle(
          fontSize: 60, color: Colors.purple, fontWeight: FontWeight.w100),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: DefaultTextStyleTransition(
            style: textStyleTween.animate(controller), child: Text("Flutter")),
      ),
    );
  }
}
