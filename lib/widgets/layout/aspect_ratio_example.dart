import 'package:flutter/material.dart';

class AspectRatioExample extends StatelessWidget {
  const AspectRatioExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Center(
            child: AspectRatio(
              aspectRatio: 17 / 8,
              child: Container(
                color: Colors.green,
                width: 100,
                height: 50,
              ),
            ),
          ),
          AspectRatio(
            aspectRatio: 18 / 13,
            child: Container(
              color: Colors.deepPurpleAccent,
            ),
          )
        ],
      ),
    );
  }
}
