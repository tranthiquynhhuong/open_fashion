import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

Widget selectWrap({
  List<String>? listSelect,
  Function(int index)? onCloseClick,
}) {
  if (listSelect == null) return empty();
  return Wrap(
    direction: Axis.horizontal,
    spacing: 7,
    runSpacing: 7,
    children: List.generate(
      listSelect.length,
      (index) {
        return Stack(
          children: [
            selectWrapChip(listSelect[index]),
            Positioned.fill(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  TTRadiusButton(
                    radius: 30,
                    child: Container(
                      width: 32,
                      height: 32,
                      decoration: BoxDecoration(
                        borderRadius: 30.borderRadius(),
                      ),
                      child: Center(
                        child: SizedBox(
                          width: 16,
                          height: 16,
                          child: Image.asset(Id.close),
                        ),
                      ),
                    ),
                    onTap: () => onCloseClick?.call(index),
                  )
                ],
              ),
            )
          ],
        );
      },
    ),
  );
}

Widget selectWrapChip(String text) {
  return Container(
    height: 32,
    decoration: BoxDecoration(
      color: Cl.white,
      borderRadius: 30.borderRadius(),
      border: Border.all(width: 1, color: Cl.border),
    ),
    padding: symmetric(horizontal: 10, vertical: 8),
    child: Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        TText(
          text,
          style: St.body_M_14_regular.copyWith(height: 1),
          maxLines: 1,
        ),
        width(6),
        Image.asset(Id.close, color: Colors.transparent),
      ],
    ),
  );
}

Widget trendingTagWrap({List<String>? listChip}) {
  if (listChip == null) return const SizedBox();
  return Wrap(
    direction: Axis.horizontal,
    spacing: 8,
    runSpacing: 8,
    children: List.generate(
      listChip.length,
      (index) {
        return trendingTagChip(listChip[index]);
      },
    ),
  );
}

Widget trendingTagChip(String text) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        height: 32,
        padding: symmetric(horizontal: 10, vertical: 8),
        decoration: BoxDecoration(
          color: Cl.input_bg,
          borderRadius: 30.borderRadius(),
        ),
        child: Center(
          child: TText(
            '#$text',
            style: St.body_M_14_regular.copyWith(color: Cl.body),
          ),
        ),
      ),
    ],
  );
}

Widget hashTagWrap({List<String>? listChip}) {
  if (listChip == null) return const SizedBox();
  return Wrap(
    spacing: 14,
    runSpacing: 8,
    children: List.generate(
      listChip.length,
      (index) {
        return hashtagChip(listChip[index]);
      },
    ),
  );
}

Widget hashtagChip(String text, {EdgeInsetsGeometry? padding}) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        height: 32,
        padding: padding ?? symmetric(horizontal: 14, vertical: 6),
        decoration: BoxDecoration(
          color: Colors.transparent,
          borderRadius: 20.borderRadius(),
          border: Border.all(
            color: Cl.f5f5f5,
          ),
        ),
        child: Center(
          child: TText(
            '#$text',
            style: St.body_S_12_regular.copyWith(color: Cl.place_holder_button),
          ),
        ),
      ),
    ],
  );
}
