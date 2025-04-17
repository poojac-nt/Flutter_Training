import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appbar.dart';
import 'package:flutter_practice/widgets/slivers/cupertino_refresh_example.dart';
import 'package:flutter_practice/widgets/slivers/cupertino_sliver_navbar.dart';
import 'package:flutter_practice/widgets/slivers/custom_scroll_view_example.dart';
import 'package:flutter_practice/widgets/slivers/sliver_persistent_header_example.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const SliverPersistentHeaderExample());
  }
}
