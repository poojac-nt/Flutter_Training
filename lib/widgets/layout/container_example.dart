import 'package:flutter/material.dart';

class ContainerExample extends StatelessWidget {
  const ContainerExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.centerLeft,
            transform: Matrix4.skewX(0.5),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(top: 120),
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.cyan),
          ),
          Container(
            alignment: Alignment.centerLeft,
            transform: Matrix4.skew(0.15, 0.16),
            padding: EdgeInsets.all(10),
            margin: EdgeInsets.only(left: 100, top: 80),
            width: 200,
            height: 200,
            decoration: BoxDecoration(color: Colors.cyan),
          ),
          Container(
            padding: EdgeInsets.all(10),
            constraints: BoxConstraints.tightFor(width: 100, height: 100),
            margin: EdgeInsets.only(left: 10, top: 50),
            foregroundDecoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    transform: GradientRotation(1.0),
                    colors: [
                  Colors.purple,
                  Colors.blue,
                  Colors.green,
                  Colors.yellow,
                  Colors.orange,
                  Colors.red,
                ])),
            decoration: const BoxDecoration(color: Colors.cyan),
          )
        ],
      ),
    );
  }
}
