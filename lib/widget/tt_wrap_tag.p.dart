import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

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

Widget hashtagChip(String text) {
  return Row(
    mainAxisSize: MainAxisSize.min,
    children: [
      Container(
        height: 32,
        padding: symmetric(horizontal: 14, vertical: 6),
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
