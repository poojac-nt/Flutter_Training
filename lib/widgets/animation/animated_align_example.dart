import 'package:flutter/material.dart';

class AnimatedAlignExample extends StatefulWidget {
  const AnimatedAlignExample({super.key});

  @override
  State<AnimatedAlignExample> createState() => _AnimatedAlignState();
}

class _AnimatedAlignState extends State<AnimatedAlignExample> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: GestureDetector(
        onTap: () {
          setState(() {
            isSelected = !isSelected;
          });
        },
        child: Center(
          child: Container(
              color: Colors.blue,
              height: 250,
              width: 250,
              child: AnimatedAlign(
                alignment:
                    isSelected ? Alignment.topRight : Alignment.bottomLeft,
                duration: Duration(milliseconds: 20),
                curve: Curves.easeInOutCirc,
                child: FlutterLogo(
                  size: 100,
                ),
              )),
        ),
      ),
    );
  }
}
