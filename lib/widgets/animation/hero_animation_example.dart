import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/animation/hero_animation_second.dart';

class HeroAnimationExample extends StatefulWidget {
  const HeroAnimationExample({super.key});

  @override
  State<HeroAnimationExample> createState() => _HeroAnimationExampleState();
}

class _HeroAnimationExampleState extends State<HeroAnimationExample> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Hero(
          tag: "plus",
          transitionOnUserGestures: true,
          flightShuttleBuilder:
              (flightContext, animation, direction, fromContext, toContext) {
            if (direction == HeroFlightDirection.push) {
              return Icon(
                Icons.rocket_launch,
                size: 70,
              );
            } else if (direction == HeroFlightDirection.pop) {
              return Icon(
                Icons.rocket_launch,
                size: 170,
              );
            }
            return Icon(
              Icons.rocket_launch,
              size: 30,
            );
          },
          child: IconButton(
            icon: Icon(
              Icons.add,
              size: 50,
            ),
            onPressed: () {
              Navigator.push(
                  context,
                  MaterialPageRoute(
                      builder: (context) => HeroAnimationSecond()));
            },
          ),
        ),
      ),
    );
  }
}
