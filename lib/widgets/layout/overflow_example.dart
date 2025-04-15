import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

class OverflowExample extends StatelessWidget {
  const OverflowExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Radha",
            style: TextStyle(fontSize: 30),
          ),
          Container(
            height: 100,
            width: 100,
            color: Colors.lime,
            child: OverflowBox(
                maxWidth: 100,
                maxHeight: 190,
                fit: OverflowBoxFit.max,
                child: Card(
                  child: Center(child: Text("data")),
                )),
          )
        ],
      ),
    );
  }
}
