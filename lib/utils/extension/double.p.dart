import 'package:flutter/material.dart';

extension DoubleEx on double {
  BorderRadius borderRadius() => BorderRadius.circular(this);
  Radius radius() => Radius.circular(this);

  double toKm() => this / 1000;
}
