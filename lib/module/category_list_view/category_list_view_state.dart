part of category_list_view;

class _CategoryListViewViewState extends TTState<_CategoryListViewModel, _CategoryListViewView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryListViewModel model) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            children: [
              Stack(
                children: [
                  SizedBox(
                    height: 134,
                    child: InkWell(
                      onTap: () => model.onProItemPressed(index),
                      child: Row(
                        children: [
                          SizedBox(
                            width: 100,
                            child: Image.asset(Picture.category_sample),
                          ),
                          width(12),
                          Flexible(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                TText(
                                  'LAMEREI',
                                  style: St.subtitle_14_regular.copyWith(color: Cl.title_active),
                                ),
                                height(8),
                                TText(
                                  'Recycle Boucle Knit Cardigan Pink',
                                  style: St.body_M_14_regular.copyWith(color: Cl.label),
                                ),
                                height(5),
                                TText(
                                  '\$120',
                                  style: St.body_M_14_regular.copyWith(
                                    color: Cl.secondary,
                                    fontSize: 15,
                                  ),
                                ),
                                height(11),
                                Row(
                                  children: [
                                    Image.asset(Id.star_1),
                                    width(3),
                                    TText(
                                      '4.8 Ratings',
                                      style: St.body_S_12_regular.copyWith(
                                        color: Cl.label,
                                      ),
                                    ),
                                  ],
                                ),
                                height(11),
                                SizedBox(
                                  height: 24,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      TText(
                                        'Size',
                                        style: St.body_S_12_regular.copyWith(
                                          color: Cl.label,
                                        ),
                                      ),
                                      width(6),
                                      buildSizeList(),
                                      width(58)
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned.fill(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.end,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Padding(
                          padding: only(right: 16),
                          child: TTRadiusButton(
                            onTap: () => model.onFavoritePressed(index),
                            radius: 22,
                            child: Container(
                              width: 22,
                              height: 22,
                              margin: all(10),
                              decoration: BoxDecoration(
                                borderRadius: 22.borderRadius(),
                                color: Colors.transparent,
                              ),
                              child: Image.asset(Id.small_heart_selected),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              index != model.listLength - 1 ? height(12) : empty(),
            ],
          );
        },
        childCount: model.listLength,
      ),
    );
  }

  buildSizeList() {
    return Flexible(
      child: ListView.separated(
        padding: only(right: 6),
        itemBuilder: ((context, index) => buildSizeItem(model.lstSizeTmp[index])),
        separatorBuilder: ((context, index) => width(6)),
        itemCount: model.lstSizeTmp.length,
        scrollDirection: Axis.horizontal,
      ),
    );
  }
}
