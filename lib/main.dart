import 'package:flutter/material.dart';
import 'package:flutter_practice/widgets/animation/align_transition_example.dart';
import 'package:flutter_practice/widgets/animation/animated_align_example.dart';
import 'package:flutter_practice/widgets/animation/animated_builder_example.dart';
import 'package:flutter_practice/widgets/animation/animated_container-example.dart';
import 'package:flutter_practice/widgets/animation/animated_default_textstyle_example.dart';
import 'package:flutter_practice/widgets/animation/animated_list_example.dart';
import 'package:flutter_practice/widgets/animation/animated_opacity_example.dart';
import 'package:flutter_practice/widgets/animation/animated_positioned_example.dart';
import 'package:flutter_practice/widgets/animation/animated_size_example.dart';
import 'package:flutter_practice/widgets/animation/animated_widget_example.dart';
import 'package:flutter_practice/widgets/animation/anmated_cross_fade_example.dart';
import 'package:flutter_practice/widgets/animation/decorated_box_animation_example.dart';
import 'package:flutter_practice/widgets/animation/default_style_transition.dart';
import 'package:flutter_practice/widgets/animation/fade_transition%20_example.dart';
import 'package:flutter_practice/widgets/animation/hero_animation_example.dart';
import 'package:flutter_practice/widgets/animation/rotation_transition_example.dart';
import 'package:flutter_practice/widgets/animation/scale_transition_example.dart';
import 'package:flutter_practice/widgets/appbar.dart';

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
        home: RotationTransitionExample());
  }
}
