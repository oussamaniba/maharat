import 'package:flutter/material.dart';

extension NumExtension on num {
  num toMinutes() => (this / 60);
  num toKm() => (this / 1000);

  num toScreenSize(BuildContext context) {
    double unitHeightValue = MediaQuery.of(context).size.height * 0.001;

    return this * unitHeightValue;
  }
}
