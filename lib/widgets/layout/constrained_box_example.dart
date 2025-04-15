import 'package:flutter/material.dart';

class ConstrainedBoxExample extends StatelessWidget {
  const ConstrainedBoxExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ConstrainedBox(
                constraints: BoxConstraints.tightFor(
                  height: 120,
                  width: 120,
                ),
                child: Card(
                  child: Center(
                      child: Text(
                    "Radhe Radhe",
                    style: TextStyle(color: Colors.orange),
                  )),
                ),
              ),
            ),
            Expanded(
                flex: 2,
                child: Container(
                  color: Colors.blue,
                  height: 120,
                  width: 120,
                )),
            Container(
              color: Colors.indigo,
              height: 120,
              width: 120,
            ),
            Expanded(
                flex: 1,
                child: Card(
                  child: Center(
                    child: Text("Hare krishna"),
                  ),
                ))
          ],
        ),
      ),
    );
  }
}
