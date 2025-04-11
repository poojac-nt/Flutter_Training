import 'package:flutter/material.dart';

class ColumnExample extends StatelessWidget {
  const ColumnExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            const SizedBox(height: 200),
            Container(
              decoration: const BoxDecoration(
                color: Colors.white,
              ),
              child: const Image(
                  fit: BoxFit.fill,
                  image: AssetImage("assets/images/images.jpeg")),
            ),
            const Text(
              "Column in Flutter",
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 52, color: Colors.teal),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              textAlign: TextAlign.center,
              "A widget that displays it's children in vertical array... For horizontal variant see the Row",
              style: TextStyle(fontSize: 18, color: Colors.black38),
            ),
            const SizedBox(
              height: 60,
            ),
            Container(
                height: 100,
                width: 100,
                decoration: BoxDecoration(
                    color: Colors.teal.withOpacity(0.5),
                    borderRadius: BorderRadius.circular(100)),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(
                      Icons.chevron_right,
                      size: 34,
                    )))
          ],
        ),
      ),
    );
  }
}
