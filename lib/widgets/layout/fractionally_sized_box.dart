import 'package:flutter/material.dart';

class FractionallySizedBoxExample extends StatelessWidget {
  const FractionallySizedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: FractionallySizedBox(
          alignment: FractionalOffset.center,
          widthFactor: 0.9,
          heightFactor: 0.1,
          child: DecoratedBox(decoration: BoxDecoration(color: Colors.lime)),
        ),
      ),
    );
  }
}
