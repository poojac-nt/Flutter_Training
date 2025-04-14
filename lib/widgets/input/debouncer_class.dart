import 'dart:async';

import 'package:flutter/material.dart';

class Debouncer {
  Timer? timer;
  int milliSeconds;
  Debouncer({required this.milliSeconds});

  void run(VoidCallback action) {
    if (timer != null) {
      timer!.cancel();
    }
    timer = Timer(Duration(milliseconds: milliSeconds), action);
  }
}
