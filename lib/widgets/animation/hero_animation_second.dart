import 'package:flutter/material.dart';

class HeroAnimationSecond extends StatefulWidget {
  const HeroAnimationSecond({super.key});

  @override
  State<HeroAnimationSecond> createState() => _HeroAnimationSecondState();
}

class _HeroAnimationSecondState extends State<HeroAnimationSecond> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.arrow_back_ios_new_rounded),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
      ),
      body: Align(
        alignment: Alignment.centerLeft,
        child: Hero(
            tag: "plus",
            placeholderBuilder: (context, size, widget) {
              return Container(
                width: 100,
                height: 200,
                child: CircularProgressIndicator(),
              );
            },
            child: Icon(
              Icons.add,
              size: 100,
            )),
      ),
    );
  }
}
