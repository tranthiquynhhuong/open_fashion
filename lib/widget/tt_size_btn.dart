import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

Widget buildSizeItem(
  String size, {
  bool isSelected = false,
  Function? onSizeItemPressed,
}) {
  return TTRadiusButton(
    radius: 12,
    child: Container(
      width: 24,
      height: 24,
      decoration: BoxDecoration(
        borderRadius: 12.borderRadius(),
        border: Border.all(color: isSelected ? Cl.body : Cl.border),
        color: isSelected ? Cl.body : Cl.white,
      ),
      child: Center(
        child: TText(
          size,
          style: St.body_S_12_regular.copyWith(fontSize: 10, color: isSelected ? Cl.input_bg : Cl.label),
        ),
      ),
    ),
    onTap: () => onSizeItemPressed?.call(),
  );
}
