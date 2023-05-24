import 'package:flutter/material.dart';

Widget width(double width) => SizedBox(width: width);

Widget widthInfinity({Widget? child}) {
  return SizedBox(width: double.infinity, child: child);
}

Widget height(double height) => SizedBox(height: height);

Widget heightInfinity({Widget? child}) {
  return SizedBox(height: double.infinity, child: child);
}

Widget square({required double dimen, Widget? child}) {
  return SizedBox.square(dimension: dimen, child: child);
}

Widget empty() => const SizedBox();
