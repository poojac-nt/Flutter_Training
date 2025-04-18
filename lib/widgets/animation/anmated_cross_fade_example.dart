import 'package:flutter/material.dart';

class AnimatedCrossFadeExample extends StatefulWidget {
  const AnimatedCrossFadeExample({super.key});

  @override
  State<AnimatedCrossFadeExample> createState() =>
      _AnimatedCrossFadeExampleState();
}

class _AnimatedCrossFadeExampleState extends State<AnimatedCrossFadeExample> {
  bool first = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              first = !first;
            });
          },
          child: AnimatedCrossFade(
              firstChild: Container(
                decoration:
                    BoxDecoration(shape: BoxShape.circle, color: Colors.blue),
              ),
              secondChild: Container(
                height: 100,
                width: 200,
                decoration: BoxDecoration(
                    shape: BoxShape.rectangle, color: Colors.indigo),
              ),
              firstCurve: Curves.easeInBack,
              secondCurve: Curves.easeInBack,
              crossFadeState:
                  first ? CrossFadeState.showFirst : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 200)),
        ),
      ),
    );
  }
}
