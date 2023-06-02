part of category_full_view;

class _CategoryFullViewViewState extends TTState<_CategoryFullViewModel, _CategoryFullViewView> {
  @override
  Widget buildWithModel(BuildContext context, _CategoryFullViewModel model) {
    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (BuildContext context, int index) {
          return Column(
            children: [
              SizedBox(
                height: 511,
                width: double.infinity,
                child: InkWell(
                  onTap: () => model.onItemClick(index),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Stack(
                          children: [
                            Image.asset(Picture.category_full_sample),
                            Positioned.fill(
                              child: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: only(right: 7, bottom: 22),
                                    child: TTRadiusButton(
                                      onTap: () => model.onFavoritePressed(index),
                                      radius: 24,
                                      child: Container(
                                        width: 24,
                                        height: 24,
                                        margin: all(8),
                                        decoration: BoxDecoration(
                                          borderRadius: 24.borderRadius(),
                                          color: Colors.transparent,
                                        ),
                                        child: Image.asset(Id.small_heart_unselect),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 33,
                        child: TText(
                          'MOHAN',
                          style: St.title_18_regular.copyWith(color: Cl.black),
                          textAlign: TextAlign.center,
                        ),
                      ),
                      SizedBox(
                        height: 24,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Expanded(
                              child: TText(
                                'Recycle Boucle Knit Cardigan Pink',
                                style: St.body_L_16_regular.copyWith(color: Cl.label),
                              ),
                            ),
                            TText(
                              '\$120',
                              style: St.body_L_16_regular.copyWith(
                                color: Cl.secondary,
                                fontSize: 18,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              index != model.listLength - 1 ? height(30) : empty(),
            ],
          );
        },
        childCount: model.listLength,
      ),
    );
  }
}
