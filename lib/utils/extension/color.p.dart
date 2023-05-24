import 'package:flutter/material.dart';

extension ColorEx on Color {
  /// Prefixes a hash sign if [leadingHashSign] is set to `true` (default is `true`).
  String toHex({bool leadingHashSign = true, bool hasAlpha = false}) {
    return [
      if (leadingHashSign) '#',
      if (hasAlpha) alpha.toRadixString(16).padLeft(2, '0'),
      red.toRadixString(16).padLeft(2, '0'),
      green.toRadixString(16).padLeft(2, '0'),
      blue.toRadixString(16).padLeft(2, '0'),
    ].join();
  }
}
