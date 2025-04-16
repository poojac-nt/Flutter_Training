import 'package:flutter/material.dart';

class LayoutBuilderExample extends StatelessWidget {
  LayoutBuilderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LayoutBuilder(builder: (context, constraints) {
        if (constraints.maxWidth > 600) {
          return buildWideContainer(context);
        } else {
          return listBody(context);
        }
      }),
    );
  }

  Widget buildLargeContainer(BuildContext context) {
    return Center(
      child: Container(
        color: Colors.indigo,
        height: 200,
        width: 500,
      ),
    );
  }

  Widget buildWideContainer(BuildContext context) {
    return Row(
      children: [
        Container(
          color: Colors.orange,
          height: 200,
          width: 300,
        ),
        Container(
          color: Colors.black,
          height: 200,
          width: 40,
        ),
      ],
    );
  }

  Widget listBody(BuildContext context) {
    return Column(
      children: [
        ListBody(
          mainAxis: Axis.vertical,
          reverse: false,
          children: [
            Container(
                color: Colors.cyan, height: 200, width: 200, child: Text("1")),
            Container(
                color: Colors.black, height: 200, width: 200, child: Text("1")),
            Container(
                color: Colors.blue, height: 200, width: 200, child: Text("1")),
            Container(
                color: Colors.orange,
                height: 200,
                width: 200,
                child: Text("1")),
            Container(
                color: Colors.orange, height: 200, width: 200, child: Text("1"))
          ],
        ),
      ],
    );
  }
}
