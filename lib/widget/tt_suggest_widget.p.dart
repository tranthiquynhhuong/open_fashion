import 'package:flutter/material.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/widget.dart';

Widget buildSuggestWidget({
  Function? onFavoritePressed,
  Function? onItemPressed,
}) {
  return LayoutBuilder(builder: (context, constraints) {
    final w = (constraints.maxWidth - 44) / 2;
    return GridView.builder(
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      padding: symmetric(vertical: 16, horizontal: 16),
      itemCount: 4,
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 12,
        crossAxisSpacing: 12,
        childAspectRatio: w / 285,
      ),
      itemBuilder: (ctx, ind) {
        return GestureDetector(
          onTap: () => onItemPressed?.call(),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Expanded(
                child: Stack(
                  children: [
                    Image.asset(Picture.category_sample),
                    Positioned.fill(
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: only(right: 3),
                            child: TTRadiusButton(
                              onTap: () => onFavoritePressed?.call(),
                              radius: 22,
                              child: Container(
                                width: 22,
                                height: 22,
                                margin: all(6),
                                decoration: BoxDecoration(
                                  borderRadius: 22.borderRadius(),
                                  color: Colors.transparent,
                                ),
                                child: Image.asset(Id.small_heart_unselect),
                              ),
                            ),
                          ),
                          height(16)
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              height(8),
              TText(
                '21WN',
                maxLines: 1,
                style: St.body_S_12_regular.copyWith(
                  color: Cl.title_active,
                ),
              ),
              TText(
                'reversible angora cardigan',
                maxLines: 1,
                style: St.body_S_12_regular.copyWith(
                  color: Cl.label,
                ),
              ),
              height(4),
              TText(
                '\$120',
                maxLines: 1,
                style: St.body_M_14_regular.copyWith(
                  color: Cl.secondary,
                  fontSize: 15,
                ),
              ),
            ],
          ),
        );
      },
    );
  });
}
