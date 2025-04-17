import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SliverPersistentHeaderExample extends StatelessWidget {
  const SliverPersistentHeaderExample({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverPersistentHeader(pinned: true, delegate: MyHeaderDelegate()),
          SliverGrid(
            delegate: SliverChildBuilderDelegate((context, index) {
              return Container(color: CupertinoColors.systemBlue, height: 100);
            }, childCount: 20),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, mainAxisSpacing: 10, crossAxisSpacing: 15),
          )
        ],
      ),
    );
  }
}

class MyHeaderDelegate extends SliverPersistentHeaderDelegate {
  @override
  Widget build(
      BuildContext context, double shrinkOffset, bool overlapsContent) {
    final progress = shrinkOffset / maxExtent;
    return Material(
      child: Stack(
        fit: StackFit.expand,
        children: [
          AnimatedOpacity(
            opacity: progress,
            duration: Duration(milliseconds: 100),
            child: ColoredBox(color: Color(0xBE7A81FF)),
          ),
          AnimatedOpacity(
            opacity: 1 - progress,
            duration: Duration(milliseconds: 150),
            child: Image.asset(
              'assets/images/mountain.jpg',
              fit: BoxFit.cover,
            ),
          ),
          AnimatedContainer(
            duration: Duration(milliseconds: 100),
            padding: EdgeInsets.lerp(
                EdgeInsets.symmetric(horizontal: 16, vertical: 16),
                EdgeInsets.only(bottom: 16),
                progress),
            alignment: Alignment.lerp(
                Alignment.bottomCenter, Alignment.bottomLeft, progress),
            child: Text(
              'Mountain',
              style: TextStyle.lerp(
                  Theme.of(context)
                      .textTheme
                      .headlineSmall!
                      .copyWith(color: Colors.white),
                  Theme.of(context)
                      .textTheme
                      .headlineMedium!
                      .copyWith(color: Colors.white),
                  progress),
            ),
          ),
        ],
      ),
    );
  }

  @override
  // TODO: implement maxExtent
  double get maxExtent => 265;

  @override
  // TODO: implement minExtent
  double get minExtent => 85;

  @override
  bool shouldRebuild(covariant SliverPersistentHeaderDelegate oldDelegate) {
    // TODO: implement shouldRebuild
    return true;
  }
}
