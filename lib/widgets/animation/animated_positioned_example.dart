import 'package:flutter/material.dart';

class AnimatedPositionedExample extends StatefulWidget {
  const AnimatedPositionedExample({super.key});

  @override
  State<AnimatedPositionedExample> createState() =>
      _AnimatedPositionedExampleState();
}

class _AnimatedPositionedExampleState extends State<AnimatedPositionedExample> {
  late final Cubic curves = Curves.easeInOut;
  late final Duration duration = Duration(seconds: 2);

  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        fit: StackFit.loose,
        children: [
          AnimatedPositioned(
              height: isSelected ? 200 : 50,
              width: isSelected ? 50 : 200,
              top: isSelected ? 50 : 100,
              child: GestureDetector(
                onTap: () {
                  setState(() {
                    isSelected = !isSelected;
                  });
                },
                child: Container(
                  color: Colors.blueAccent,
                ),
              ),
              curve: curves,
              duration: duration)
        ],
      ),
    );
  }
}
