import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/layout/baseline_Example.dart';
import 'package:flutter_practice/widgets/layout/constrained_box_example.dart';
import 'package:flutter_practice/widgets/layout/container_example.dart';
import 'package:flutter_practice/widgets/layout/fittedbox_example.dart';
import 'package:flutter_practice/widgets/layout/fractionally_sized_box.dart';
import 'package:flutter_practice/widgets/layout/intrisic_height_example.dart';
import 'package:flutter_practice/widgets/layout/offstage_example.dart';
import 'package:flutter_practice/widgets/layout/overflow_example.dart';
import 'package:flutter_practice/widgets/layout/table_example.dart';
import 'package:flutter_practice/widgets/layout/transform_example.dart';

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
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
          useMaterial3: true,
        ),
        home: const TableExample());
  }
}
