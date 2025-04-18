import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appbar.dart';
import 'package:flutter_practice/widgets/async/future_builder.dart';
import 'package:flutter_practice/widgets/async/stream_builder_example.dart';

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
        home: const StreamBuilderExample());
  }
}
