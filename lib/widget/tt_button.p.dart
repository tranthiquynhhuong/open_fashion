import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/widget/widget.dart';

Widget buildSubmitButton(
  String text, {
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildSubmitIconButton(
  String text, {
  required Widget icon,
  bool isReverseIcon = false,
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildButton(
  String text, {
  double? width,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildIconButton(
  String text, {
  required Widget icon,
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildBottomButton(
  String text, {
  Widget? icon,
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onPressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildBottomAddButton(
  String text, {
  bool isReverseIcon = false,
  bool isBlack = true,
  VoidCallback? onAddPressed,
  VoidCallback? onFavoritePressed,
  TextStyle? style,
}) {
  return buildPrimaryButton(
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

Widget buildPrimaryButton({
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
