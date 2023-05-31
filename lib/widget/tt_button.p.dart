// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

Widget TTRadiusButton({required double radius, required Widget child, Function? onTap}) {
  return Material(
    color: Colors.transparent,
    child: InkWell(
      onTap: () => onTap?.call(),
      borderRadius: radius.borderRadius(),
      child: child,
    ),
  );
}

Widget TTSubmitButton(
  String text, {
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
    height: 48,
    width: width,
    fillColor: isBlack ? null : Colors.transparent,
    borderColor: isBlack ? null : Cl.border,
    onPressed: onPressed,
    child: TText(
      text,
      style: style ?? St.subtitle_16_regular.copyWith(color: isBlack ? Cl.bg : Cl.title_active),
    ),
  );
}

Widget TTSubmitIconButton(
  String text, {
  required Widget icon,
  bool isReverseIcon = false,
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
    height: 48,
    fillColor: isBlack ? null : Colors.transparent,
    borderColor: isBlack ? null : Cl.border,
    onPressed: onPressed,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Row(
        textDirection: isReverseIcon ? TextDirection.rtl : null,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: 16),
          TText(
            text,
            style: style ?? St.subtitle_16_regular.copyWith(color: isBlack ? Cl.bg : Cl.title_active),
          ),
        ],
      ),
    ),
  );
}

Widget TTButton(
  String text, {
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
    height: 40,
    fillColor: isBlack ? null : Colors.transparent,
    borderColor: isBlack ? null : Cl.border,
    onPressed: onPressed,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: TText(
        text,
        style: style ?? St.subtitle_16_regular.copyWith(color: isBlack ? Cl.bg : Cl.title_active),
      ),
    ),
  );
}

Widget TTIconButton(
  String text, {
  required Widget icon,
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
    height: 40,
    fillColor: isBlack ? null : Colors.transparent,
    borderColor: isBlack ? null : Cl.border,
    onPressed: onPressed,
    child: Padding(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Row(
        textDirection: isReverseIcon ? TextDirection.rtl : null,
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.min,
        children: [
          icon,
          const SizedBox(width: 16),
          TText(
            text,
            style: style ?? St.subtitle_16_regular.copyWith(color: isBlack ? Cl.bg : Cl.title_active),
          ),
        ],
      ),
    ),
  );
}

Widget TTBottomButton(
  String text, {
  Widget? icon,
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
    width: double.infinity,
    onPressed: onPressed,
    child: icon != null
        ? Row(
            textDirection: isReverseIcon ? TextDirection.rtl : null,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              icon,
              const SizedBox(width: 24),
              TText(
                text,
                style: style ?? St.subtitle_16_regular.copyWith(color: Cl.bg),
              ),
            ],
          )
        : Center(
            child: TText(
              text,
              style: style ?? St.subtitle_16_regular.copyWith(color: Cl.bg),
            ),
          ),
  );
}

Widget TTBottomAddButton(
  String text, {
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onAddPressed,
  VoidCallback? onFavoritePressed,
  TextStyle? style,
}) {
  return TTPrimaryButton(
      width: double.infinity,
      onPressed: onAddPressed,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(Id.plus, color: Cl.bg),
            const SizedBox(width: 8),
            TText(
              text,
              style: style ?? St.subtitle_16_regular.copyWith(color: Cl.bg),
            ),
            const Spacer(),
            IconButton(
              onPressed: onFavoritePressed,
              icon: Image.asset(Id.heart, color: Cl.bg),
            ),
          ],
        ),
      ));
}

Widget TTPrimaryButton({
  required Widget child,
  double height = 56,
  double? width,
  Color? fillColor,
  Color? borderColor,
  VoidCallback? onPressed,
}) {
  return SizedBox(
    height: height,
    width: width,
    child: RawMaterialButton(
      fillColor: fillColor ?? Cl.black,
      shape: RoundedRectangleBorder(
        side: BorderSide(
          color: borderColor ?? Colors.black,
        ),
      ),
      onPressed: onPressed ?? () {},
      elevation: 0,
      focusElevation: 0,
      hoverElevation: 0,
      disabledElevation: 0,
      highlightElevation: 0,
      child: child,
    ),
  );
}
