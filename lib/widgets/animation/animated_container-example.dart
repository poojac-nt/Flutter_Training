import 'package:flutter/material.dart';

class AnimatedContainerExample extends StatefulWidget {
  AnimatedContainerExample({super.key});

  @override
  State<AnimatedContainerExample> createState() =>
      _AnimatedContainerExampleState();
}

class _AnimatedContainerExampleState extends State<AnimatedContainerExample> {
  bool selected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              selected = !selected;
            });
          },
          child: AnimatedContainer(
            duration: Duration(seconds: 2),
            height: selected ? 100 : 200,
            width: selected ? 200 : 100,
            color: selected ? Colors.blue : Colors.deepPurple,
            alignment: selected ? Alignment.center : Alignment.topCenter,
            curve: Curves.fastOutSlowIn,
            child: FlutterLogo(
              size: 60,
            ),
          ),
        ),
      ),
    );
  }
}
