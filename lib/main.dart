import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/appbar.dart';
import 'package:flutter_practice/widgets/media_query_example.dart';
import 'package:flutter_practice/widgets/styling_widgets/theme.dart';
import 'package:flutter_practice/widgets/styling_widgets/theme_provider.dart';

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
      themeMode: ThemeMode.system,
      theme: CustomTheme.lightTheme,
      darkTheme: CustomTheme.darkTheme,
      home: const MediaQueryExample(),
    );
  }
}
