import 'package:flutter/material.dart';

class FittedboxExample extends StatelessWidget {
  const FittedboxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            color: Colors.indigo,
            height: 200,
            width: 200,
            child: FittedBox(
              fit: BoxFit.scaleDown,
              alignment: Alignment.topCenter,
              child: Container(
                color: Colors.blue,
                height: 100,
                width: 100,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
