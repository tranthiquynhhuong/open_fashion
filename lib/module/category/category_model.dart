part of category;

class _CategoryModel extends TTChangeNotifier<_CategoryView> {
  bool isHaveFilter = false;
  CategoryViewMode viewMode = CategoryViewMode.grid;
  List<String> lstSelectTmp = ['Women', 'All', 'Accessories', 'New', 'Cheap to expensive'];
  int selectedPage = 1;

  void setSelectedPage(int index) {
    if (index != selectedPage) {
      selectedPage = index;
    }
    notifyListeners();
  }

  void onMenuPressed() {}

  void onViewModeChanged() {
    if (viewMode == CategoryViewMode.full) {
      viewMode = CategoryViewMode.grid;
    } else if (viewMode == CategoryViewMode.grid) {
      viewMode = CategoryViewMode.list;
    } else {
      viewMode = CategoryViewMode.full;
    }
    notifyListeners();
  }

  void onFilterPressed() {
    isHaveFilter = !isHaveFilter;
    notifyListeners();
  }

  onSelectItemClose(int index) {}
}
