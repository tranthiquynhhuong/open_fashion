part of home;

class _HomeModel extends TTChangeNotifier<_HomeView> {
  int pageIndex = 0;
  final int maxLengthListSuggest = 3;
  List<String> lstTrendingTmp = [
    'openfashion',
    'autumncollection',
    'dress',
    '2023',
    'collection',
    'fall',
    'spring',
    'trending',
    'style',
  ];
  CarouselController suggestController = CarouselController();
  PageController pageController = PageController();

  _HomeModel();

  onPageChanged(int index, CarouselPageChangedReason reason) {
    pageIndex = index;
    notifyListeners();
  }
}
