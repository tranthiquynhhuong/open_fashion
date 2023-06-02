part of product_detail_full_screen_view;

class _ProductDetailFullScreenViewViewState
    extends TTState<_ProductDetailFullScreenViewModel, _ProductDetailFullScreenViewView> {
  @override
  Widget buildWithModel(BuildContext context, _ProductDetailFullScreenViewModel model) {
    return SafeArea(
      child: LayoutBuilder(builder: (context, constraints) {
        final maxW = constraints.maxWidth;
        final maxH = constraints.maxHeight;

        return Column(
          children: [
            SizedBox(
              height: 104,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  IconButton(
                    icon: Image.asset(
                      Id.close,
                      color: Cl.off_white,
                    ),
                    onPressed: model.onClose,
                  ),
                ],
              ),
            ),
            Stack(
              children: [
                CarouselSlider(
                  carouselController: model.imgControler,
                  options: CarouselOptions(
                      scrollDirection: Axis.vertical,
                      viewportFraction: maxW / 500,
                      padEnds: false,
                      onPageChanged: model.onPageChanged,
                      height: maxH - 104,
                      enableInfiniteScroll: false),
                  items: List.generate(
                    model.imgMaxLength,
                    (index) {
                      return Container(
                        padding: only(bottom: index < model.imgMaxLength - 1 ? 12 : 0),
                        child: Image.asset(
                          Picture.category_full_sample,
                          fit: BoxFit.cover,
                        ),
                      );
                    },
                  ),
                ),
                Positioned.fill(
                  child: Padding(
                    padding: only(right: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 8,
                          child: Center(
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                model.imgMaxLength,
                                (index) => Padding(
                                  padding: symmetric(vertical: 2.5),
                                  child: model.pageIndex == index
                                      ? Image.asset(
                                          Id.indicator_selected_grey,
                                          color: Cl.primary,
                                        )
                                      : Image.asset(
                                          Id.indicator_selected_grey,
                                          color: Cl.off_white,
                                        ),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ],
        );
      }),
    );
  }
}
