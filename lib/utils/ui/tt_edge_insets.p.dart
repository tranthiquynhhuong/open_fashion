import 'package:flutter/material.dart';

EdgeInsets only({double top = 0, double left = 0, double right = 0, double bottom = 0}) {
  return EdgeInsets.only(top: top, left: left, right: right, bottom: bottom);
}

EdgeInsets symmetric({double horizontal = 0, double vertical = 0}) {
  return EdgeInsets.symmetric(horizontal: horizontal, vertical: vertical);
}

EdgeInsets fromLTRB(double left, double top, double right, double bottom) {
  return EdgeInsets.fromLTRB(left, top, right, bottom);
}

const EdgeInsets zero = EdgeInsets.zero;
EdgeInsets all(double all) => EdgeInsets.all(all);
EdgeInsets horizontal(double horizontal) => symmetric(horizontal: horizontal);
EdgeInsets vertical(double vertical) => symmetric(vertical: vertical);

EdgeInsets right(double right) => only(right: right);
EdgeInsets left(double left) => only(left: left);
EdgeInsets bottom(double bottom) => only(bottom: bottom);
EdgeInsets top(double top) => only(top: top);
