part of product_detail;

class _ProductDetailModel extends TTChangeNotifier<_ProductDetailView> {
  final imgMaxLength = 8;
  int pageIndex = 0;
  int sizeSelected = 0;
  int colorSelected = 0;
  List<int> lstExpanded = [];
  // bool isExpanded = false;

  final List<String> lstSizeTmp = ['XS', 'S', 'M', 'L', '2XL', '3XL', '4XL', '5XL'];

  final List<String> lstColorTmp = [
    '#888888',
    '#dd8060',
    '#e1e0db',
    '#b21363',
    '#a13562',
    '#817634',
    '#89011a',
    '#623b81'
  ];

  bool isExpanded(int index) {
    if (lstExpanded.contains(index)) {
      return true;
    }
    return false;
  }

  CarouselController imgControler = CarouselController();

  void onExpansionChanged(int index, bool value) {
    if (lstExpanded.contains(index)) {
      lstExpanded.remove(index);
    } else {
      lstExpanded.add(index);
    }
    notifyListeners();
  }

  onPageChanged(int index, CarouselPageChangedReason reason) {
    pageIndex = index;
    notifyListeners();
  }

  void goBack() {
    pop(context);
  }

  onZoomClick() {
    showModalBottomSheet(
      isScrollControlled: true,
      barrierColor: Cl.black.withOpacity(0.9),
      backgroundColor: Cl.black.withOpacity(0.9),
      context: context,
      builder: ((context) => createProductDetailFullScreenView()),
    );
  }

  void onShareClick() {
    debugPrint('onShareClick');
  }

  onSizeSelected(int index) {
    if (sizeSelected != index) {
      sizeSelected = index;
      notifyListeners();
    }
  }

  onColorItemClick(int index) {
    if (colorSelected != index) {
      colorSelected = index;
      notifyListeners();
    }
  }

  void onAddToCartClick() {}

  void onFavoriteClick() {}

  void onSuggestItemPressed() {
    pushReplace(context, createProductDetail());
  }
}
