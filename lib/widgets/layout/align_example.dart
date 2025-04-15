import 'package:flutter/material.dart';

class AlignExample extends StatelessWidget {
  const AlignExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          color: Colors.grey,
          child: const Align(
            alignment: Alignment.center,
            heightFactor: 2.0,
            widthFactor: 3.0,
            child: FlutterLogo(
              size: 80,
            ),
          ),
        ),
      ),
    );
  }
}
