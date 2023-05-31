part of category_grid_view;

class _CategoryGridViewViewState extends TTState<_CategoryGridViewModel, _CategoryGridViewView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryGridViewModel model) {
    final w = (MediaQuery.of(context).size.width - 44) / 2;

    return SliverGrid(
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        mainAxisSpacing: 15,
        crossAxisSpacing: 12,
        childAspectRatio: w / 285,
      ),
      delegate: SliverChildBuilderDelegate(
        childCount: 10,
        (BuildContext context, int index) {
          return GestureDetector(
            onTap: () => model.onItemClick(index),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Stack(
                    children: [
                      Picture.category_sample,
                      Positioned.fill(
                          child: Column(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Padding(
                            padding: only(right: 3),
                            child: TTRadiusButton(
                              onTap: () => model.onItemFavoriteCLick(index),
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
                      ))
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
      ),
    );
  }
}
