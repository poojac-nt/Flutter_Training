import 'package:flutter/material.dart';

class ThemeExample extends StatefulWidget {
  const ThemeExample({super.key});

  @override
  State<ThemeExample> createState() => _ThemeExampleState();
}

class _ThemeExampleState extends State<ThemeExample> {
  int counter = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Theme Demo"),
      ),
      body: Column(
        children: [
          Center(
            child: Container(
                color: Theme.of(context).disabledColor,
                height: 100,
                margin: EdgeInsets.all(20),
                padding: EdgeInsets.all(20),
                width: 300,
                child: Text(
                  "Counter Incremented : $counter times",
                  style: Theme.of(context).textTheme.labelLarge,
                )),
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.camera)),
          const Icon(Icons.camera_alt)
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            counter++;
          });
        },
        child: Icon(Icons.add),
      ),
    );
  }
}
