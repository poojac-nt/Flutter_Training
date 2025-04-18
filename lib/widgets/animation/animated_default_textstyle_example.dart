import 'package:flutter/material.dart';

class AnimatedDefaultTextstyleExample extends StatefulWidget {
  const AnimatedDefaultTextstyleExample({super.key});

  @override
  State<AnimatedDefaultTextstyleExample> createState() =>
      _AnimatedDefaultTextstyleExampleState();
}

class _AnimatedDefaultTextstyleExampleState
    extends State<AnimatedDefaultTextstyleExample> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: GestureDetector(
          onTap: () {
            setState(() {
              isSelected = !isSelected;
            });
          },
          child: AnimatedDefaultTextStyle(
              child: Text("Helllooo"),
              style: isSelected
                  ? TextStyle(
                      fontStyle: FontStyle.italic,
                      fontSize: 30,
                      color: Colors.blue)
                  : TextStyle(fontSize: 40, color: Colors.purple),
              duration: Duration(milliseconds: 200)),
        ),
      ),
    );
  }
}
