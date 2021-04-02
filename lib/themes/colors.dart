import 'package:flutter/material.dart';

import 'package:pigment/pigment.dart';

/// Define all the colors to be used in application in this file
/// To use - import this file and call required string by:
///```dart
///      AppColors.<name>
///```
///For Color Names refer: http://chir.ag/projects/name-that-color/#6195ED
class AppColors {
  AppColors._();

  static final Color lightSilver = Pigment.fromString('#ced9de');
  static const Color TRANSPARENT = Colors.transparent;
  static final Color white = Pigment.fromString("#ffffff");

  static final Color black = Pigment.fromString('#000000');
  static final Color gray = Pigment.fromString('#969696');

  static final Color primary = Pigment.fromString('#225163');
  static final Color primaryDark = Pigment.fromString('#002939');
  static final Color primaryLight = Pigment.fromString('#517d91');
}
