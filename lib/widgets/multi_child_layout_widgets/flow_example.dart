import 'package:flutter/material.dart';

class FlowExample extends StatefulWidget {
  const FlowExample({super.key});

  @override
  State<FlowExample> createState() => _FlowExampleState();
}

class _FlowExampleState extends State<FlowExample>
    with SingleTickerProviderStateMixin {
  late AnimationController openAnimation;

  @override
  void initState() {
    super.initState();
    openAnimation = AnimationController(
        lowerBound: 1,
        upperBound: 10,
        duration: Duration(seconds: 2),
        vsync: this);
  }

  double intial = 0.0;

  List<String> lables = ["Home", "Feed", "Chat", "Settngs", "About"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Container(
          child: Flow(
              delegate: SampleDelegate(openAnimation: openAnimation),
              children:
                  lables.map<Widget>((i) => buildItem(int.parse(i))).toList()),
        ),
      ),
    );
  }

  Widget buildItem(int i) {
    return GestureDetector(
      onTap: () => openAnimation.reverse(),
      onDoubleTap: () => openAnimation.forward(),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: 100,
          decoration: BoxDecoration(
              color: Colors.indigo,
              border: Border.all(color: Colors.black, width: 1),
              boxShadow: [BoxShadow(blurRadius: 2)]),
          child: FittedBox(
            child: Text("$i"),
          ),
        ),
      ),
    );
  }
}

class SampleDelegate extends FlowDelegate {
  final Animation<double> openAnimation;
  SampleDelegate({required this.openAnimation}) : super(repaint: openAnimation);
  @override
  void paintChildren(FlowPaintingContext context) {
    double dy = 0.0;
    for (int i = 0; i < context.childCount; i++) {
      dy = context.getChildSize(i)!.height * i;
      context.paintChild(i,
          transform:
              Matrix4.translationValues(0, dy * 0.1 * openAnimation.value, 0));
    }
  }

  @override
  bool shouldRepaint(SampleDelegate oldDelegate) {
    return openAnimation != oldDelegate.openAnimation;
  }
}
