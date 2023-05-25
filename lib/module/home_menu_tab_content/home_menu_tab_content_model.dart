part of home_menu_tab_content;

class _HomeMenuTabContentModel extends TTChangeNotifier<_HomeMenuTabContentView> {
  bool isExpanded = false;

  List<String> categoties = ['New', 'Apparel', 'Bag', 'Shoes', 'Beauty', 'Accessories'];
  List<String> catItems = ['Outer', 'Dress', 'Blouse/Shirt', 'Skirt', 'Pants'];

  void onCallPressed() {}

  void onStoreLocationPressed() {}

  void onExpansionChanged(bool value) {
    if (isExpanded != value) {
      isExpanded = value;
    }
    notifyListeners();
  }

  void onCateItemPressed() {}
}
