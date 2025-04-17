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
    final brightness = CupertinoTheme.brightnessOf(context);
    return CupertinoPageScaffold(
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            backgroundColor: CupertinoColors.systemBlue,
            border: Border(
              bottom: BorderSide(
                  color: brightness == Brightness.light
                      ? CupertinoColors.black
                      : CupertinoColors.white),
            ),
            middle: Text("Family"),
            largeTitle: Text("Family Group"),
          ),
          SliverFillRemaining(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  "Drag me up",
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 16,
                      decoration: TextDecoration.none),
                ),
                Text(
                  "Tap on the leading button to go back",
                  style: TextStyle(
                    fontSize: 14,
                    decoration: TextDecoration.none,
                    color: Colors.black,
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
