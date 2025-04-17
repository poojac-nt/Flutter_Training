import 'package:flutter/cupertino.dart';

class CupertinoRefreshExample extends StatefulWidget {
  const CupertinoRefreshExample({super.key});

  @override
  State<CupertinoRefreshExample> createState() =>
      _CupertinoRefreshExampleState();
}

class _CupertinoRefreshExampleState extends State<CupertinoRefreshExample> {
  List<Widget> items = [
    Container(color: CupertinoColors.systemBlue, height: 100),
    Container(color: CupertinoColors.systemIndigo, height: 100),
    Container(color: CupertinoColors.systemOrange, height: 100),
    Container(color: CupertinoColors.systemOrange, height: 100),
    Container(color: CupertinoColors.systemBlue, height: 100),
    Container(color: CupertinoColors.systemIndigo, height: 100),
    Container(color: CupertinoColors.systemOrange, height: 100),
    Container(color: CupertinoColors.systemOrange, height: 100),
  ];
  @override
  Widget build(BuildContext context) {
    return CupertinoPageScaffold(
      navigationBar: CupertinoNavigationBar(
        middle: Text("Cupertino refresh control example"),
      ),
      child: CustomScrollView(
        slivers: [
          CupertinoSliverNavigationBar(
            largeTitle: Text("Refresh"),
          ),
          CupertinoSliverRefreshControl(
            onRefresh: () async {
              await Future.delayed(Duration(milliseconds: 1000));
              setState(() {
                items.insert(0,
                    Container(color: CupertinoColors.systemBlue, height: 100));
              });
            },
          ),
          SliverList(
            delegate: SliverChildBuilderDelegate(
                childCount: items.length, (context, index) => items[index]),
          )
        ],
      ),
    );
  }
}
