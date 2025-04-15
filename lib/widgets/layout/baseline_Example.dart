import 'package:flutter/material.dart';

class BaselineExample extends StatelessWidget {
  const BaselineExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        // crossAxisAlignment: CrossAxisAlignment.baseline,
        // textBaseline: TextBaseline.ideographic,
        children: [
          buildBaselineCenter(1.0, Colors.lightGreen),
          buildBaselineCenter(100.0, Colors.lightBlueAccent),
          buildBaselineCenter(1.0, Colors.lightGreen),
          buildBaselineCenter(100.0, Colors.lightBlueAccent),
          buildBaselineCenter(1.0, Colors.lightGreen),
          buildBaselineCenter(100.0, Colors.lightBlueAccent),
          buildBaselineCenter(1.0, Colors.lightGreen),
          buildBaselineCenter(100.0, Colors.lightBlueAccent),
        ],
      ),
    );
  }

  Center buildBaselineCenter(double baseline, Color color) {
    return Center(
      child: Baseline(
          baseline: baseline,
          baselineType: TextBaseline.alphabetic,
          child: Container(
            color: color,
            height: 50,
            width: 50,
          )),
    );
  }
}
