//16.0.spaceY
import 'package:flutter/material.dart';

extension SpaceXY on double {
  SizedBox get spaceX => SizedBox(width: this);

  SizedBox get spaceY => SizedBox(height: this);

  String get roundAndTwoPlace => roundToDouble().toStringAsFixed(2);
  double get roundDouble => double.parse(roundToDouble().toStringAsFixed(2));
}

extension StringUtils on String {
  String get toCapitalizeFirst => this.isEmpty
      ? this // Return the text if it's empty
      : this[0].toUpperCase() + this.substring(1).toLowerCase();

  String get OrderKotText => this == "1"
      ? "New"
      : this == "2"
          ? "Running"
          : this == "3"
              ? "Food Ready"
              : "Completed";
}
