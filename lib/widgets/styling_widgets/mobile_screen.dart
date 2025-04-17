import 'package:flutter/material.dart';

class MobileScreen extends StatelessWidget {
  const MobileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(15),
            child: AspectRatio(
              aspectRatio: 16 / 9,
              child: Container(
                color: Colors.deepPurple[200],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 10,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                      color: Colors.deepPurple[200],
                      height: 100,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
