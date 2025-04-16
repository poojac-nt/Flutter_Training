import 'package:flutter/material.dart';

class TransformExample extends StatefulWidget {
  const TransformExample({super.key});

  @override
  State<TransformExample> createState() => _TransformExampleState();
}

class _TransformExampleState extends State<TransformExample> {
  double x = 0;

  double y = 0;

  double z = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          ColoredBox(
            color: Colors.blue,
            child: Transform(
              transform: Matrix4.identity()
                ..rotateX(x)
                ..rotateY(y)
                ..rotateZ(z),
              alignment: FractionalOffset.center,
              child: GestureDetector(
                onPanUpdate: (details) {
                  setState(() {
                    y = y + details.delta.dx / 100;
                    x = x - details.delta.dy / 100;
                  });
                },
                child: Container(
                  height: 300,
                  width: 500,
                  padding: EdgeInsets.all(10.0),
                  color: Colors.purple,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 80,
          ),
          Container(
            width: 200,
            height: 400,
            color: Colors.black,
            child: Transform(
              alignment: Alignment.centerLeft,
              transform: Matrix4.identity()
                ..setEntry(3, 2, 0.002)
                ..rotateY(-0.8),
              child: Container(
                color: Colors.orangeAccent,
                width: 300,
                height: 400,
              ),
            ),
          )
        ],
      ),
    );
  }
}
