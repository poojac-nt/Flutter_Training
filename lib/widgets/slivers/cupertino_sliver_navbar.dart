import 'package:flutter/cupertino.dart';
import 'package:cupertino_icons/cupertino_icons.dart';
import 'package:flutter/material.dart';

class CupertinoSliverNavbarExample extends StatelessWidget {
  const CupertinoSliverNavbarExample({super.key});

  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
        child: CustomScrollView(
      slivers: [
        CupertinoSliverNavigationBar(
          leading: Icon(CupertinoIcons.person_2),
          trailing: Icon(CupertinoIcons.add_circled),
          largeTitle: Text("Contacts"),
        ),
        SliverFillRemaining(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Text("Drag me up"),
              CupertinoButton.filled(
                  child: Text(
                    "Go to next page",
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        CupertinoPageRoute(builder: (context) => NextPage()));
                  })
            ],
          ),
        )
      ],
    ));
  }
}

class NextPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
}
