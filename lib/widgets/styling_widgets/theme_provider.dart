import 'package:flutter/material.dart';

class CustomTheme {
  static final ColorScheme color =
      ColorScheme.fromSeed(seedColor: Colors.deepPurple);

  static final ThemeData lightTheme = ThemeData(
    colorScheme: color,
    textTheme: TextTheme(
        labelLarge: TextStyle(
      fontSize: 20,
      fontStyle: FontStyle.italic,
      color: color.onTertiary,
      // backgroundColor: color.tertiary
    )),
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: color.secondary,
      foregroundColor: color.onSecondary,
    ),
    iconButtonTheme: IconButtonThemeData(
        style: ButtonStyle(
      iconSize: WidgetStateProperty.resolveWith(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return 60.0;
          } else {
            return 40.0;
          }
        },
      ),
      iconColor: WidgetStateColor.resolveWith(
        (states) {
          if (states.contains(WidgetState.pressed)) {
            return Colors.green;
          } else {
            return Colors.blue;
          }
        },
      ),
    )),
    platform: TargetPlatform.iOS,
    //typography: // Typography(tall: TextTheme(labelLarge: TextStyle(fontSize: 40)))
  );

  static final ThemeData darkTheme = ThemeData(
      scaffoldBackgroundColor: Colors.black,
      floatingActionButtonTheme: FloatingActionButtonThemeData(
        backgroundColor: color.primary,
        foregroundColor: color.onPrimary,
      ),
      textTheme: TextTheme(
          labelLarge: TextStyle(
              fontSize: 20,
              fontStyle: FontStyle.italic,
              color: color.onInverseSurface,
              backgroundColor: color.inverseSurface)),
      iconTheme: IconThemeData(
        size: 40,
        opacity: 0.5,
        fill: 0.9,
        color: color.surfaceBright,
        weight: 2.0,
      ));
}
