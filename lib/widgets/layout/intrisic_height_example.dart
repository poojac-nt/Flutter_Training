import 'package:flutter/material.dart';

class IntrisicHeightExample extends StatelessWidget {
  const IntrisicHeightExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          IntrinsicHeight(
            child: Row(
              children: [
                Container(
                  color: Colors.blue,
                  width: 100,
                  child: Text(
                    "Box 1",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  color: Colors.indigo,
                  width: 150,
                  child: Text(
                    "Box 2",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  color: Colors.teal,
                  width: 75,
                  child: Text(
                    "Box 3",
                    style: TextStyle(fontSize: 29),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 10,
          ),
          IntrinsicWidth(
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  child: Text(
                    "Box 4",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                Container(
                  color: Colors.indigo,
                  child: Text(
                    "Box 5",
                    style: TextStyle(fontSize: 30),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
          Row(
            children: [
              LimitedBox(
                  maxHeight: 150,
                  maxWidth: 60,
                  child: Container(
                    color: Colors.blue,
                  )),
              LimitedBox(
                  maxWidth: 50,
                  maxHeight: 50,
                  child: Container(
                    color: Colors.black,
                  ))
            ],
          )
        ],
      ),
    );
  }
}
