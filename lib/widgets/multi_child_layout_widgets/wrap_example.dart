import 'package:flutter/material.dart';

class WrapExample extends StatelessWidget {
  const WrapExample({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: Wrap(
        spacing: 10,
        crossAxisAlignment: WrapCrossAlignment.end,
        alignment: WrapAlignment.center,
        runAlignment: WrapAlignment.center,
        children: [
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
          Chip(label: Text("data")),
        ],
      ),
    );
  }
}
