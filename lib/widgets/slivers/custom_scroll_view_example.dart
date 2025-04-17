import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomScrollViewExample extends StatelessWidget {
  const CustomScrollViewExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 150,
            pinned: true,
            floating: true,
            snap: true,
            scrolledUnderElevation: 20,
            flexibleSpace: FlexibleSpaceBar(title: Text("Demo")),
          ),
          SliverGrid(
              delegate:
                  SliverChildBuilderDelegate(childCount: 20, (context, index) {
                return Container(
                  color: Colors.blue,
                  height: 100,
                );
              }),
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisSpacing: 10,
                  crossAxisSpacing: 10)),
          SliverList(
              delegate: SliverChildBuilderDelegate((context, index) {
            return ListTile(
              horizontalTitleGap: 200,
              title: Text("Title $index"),
              leading: Icon(CupertinoIcons.arrow_right_circle_fill),
            );
          }, childCount: 20)),
          SliverFixedExtentList(
              delegate: SliverChildBuilderDelegate((context, index) {
                return Card(
                  child: Text(
                    "Hey There",
                    style: TextStyle(fontSize: 30),
                  ),
                );
              }, childCount: 10),
              itemExtent: 100)
        ],
      ),
    );
  }
}
