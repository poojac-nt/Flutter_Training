import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/styling_widgets/desktop_screen.dart';
import 'package:flutter_practice/widgets/styling_widgets/mobile_screen.dart';

class MediaQueryExample extends StatelessWidget {
  const MediaQueryExample({super.key});

  @override
  Widget build(BuildContext context) {
    final query = MediaQuery.of(context).size;
    return Scaffold(
        appBar: AppBar(
          title: Text(" M O B I L E"),
        ),
        body: SafeArea(
            child: query.width < 600 ? MobileScreen() : DesktopScreen()));
  }
}
