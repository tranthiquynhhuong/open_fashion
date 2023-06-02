part of product_detail_full_screen_view;

class _ProductDetailFullScreenViewModel extends TTChangeNotifier<_ProductDetailFullScreenViewView> {
  final imgMaxLength = 8;

  int pageIndex = 0;

  CarouselController imgControler = CarouselController();

  onPageChanged(int index, CarouselPageChangedReason reason) {
    pageIndex = index;
    notifyListeners();
  }

  void onClose() {
    pop(context);
  }

  @override
  void dispose() {
    super.dispose();
  }
}
