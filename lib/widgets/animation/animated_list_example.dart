import 'package:flutter/material.dart';

class AnimatedListExample extends StatefulWidget {
  const AnimatedListExample({super.key});

  @override
  State<AnimatedListExample> createState() => _AnimatedListExampleState();
}

class _AnimatedListExampleState extends State<AnimatedListExample> {
  final GlobalKey<AnimatedListState> listKey = GlobalKey<AnimatedListState>();
  late List<int> items = [0];
  int counter = 1;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          Expanded(
            child: Container(
              height: double.infinity,
              child: AnimatedList(
                  key: listKey,
                  initialItemCount: items.length,
                  scrollDirection: Axis.vertical,
                  itemBuilder: (context, index, animation) {
                    return slideIt(context, index, animation);
                  }),
            ),
          ),
          Container(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () {
                      setState(() {
                        Future.delayed(Duration(seconds: 2));

                        listKey.currentState?.insertItem(0,
                            duration: Duration(milliseconds: 500));
                        items = []
                          ..add(counter++)
                          ..addAll(items);
                      });
                    },
                    child: Text("Add")),
                SizedBox(
                  width: 20,
                ),
                ElevatedButton(
                    onPressed: () {
                      listKey.currentState!.removeItem(
                          0, (_, animation) => slideIt(context, 0, animation),
                          duration: Duration(milliseconds: 500));

                      setState(() {
                        items.removeAt(0);
                      });
                    },
                    child: Text("Remove"))
              ],
            ),
          )
        ],
      ),
    );
  }

  Widget slideIt(BuildContext context, int index, Animation<double> animation) {
    int item = items[index];
    return SlideTransition(
      position:
          Tween(begin: Offset(-1, 2), end: Offset(0, 0)).animate(animation),
      child: SizeTransition(
        sizeFactor: animation,
        child: RotationTransition(
          turns: animation,
          child: SizedBox(
            height: 120,
            child: Card(
              color: Colors.blue,
              child: Center(child: Text("${item}")),
            ),
          ),
        ),
      ),
    );
  }
}
