import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

Widget selectList({
  List<String>? listSelect,
  Function(int index)? onCloseClick,
}) {
  if (listSelect == null) return empty();
  return ListView.separated(
    padding: symmetric(horizontal: 16),
    scrollDirection: Axis.horizontal,
    itemBuilder: ((context, index) {
      return Stack(
        children: [
          selectChip(listSelect[index]),
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
    }),
    separatorBuilder: ((context, index) => width(7)),
    itemCount: listSelect.length,
  );
}

Widget selectChip(String text) {
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
