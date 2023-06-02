part of home_menu_tab_content;

class _HomeMenuTabContentModel extends TTChangeNotifier<_HomeMenuTabContentView> {
  List<String> categoties = ['New', 'Apparel', 'Bag', 'Shoes', 'Beauty', 'Accessories'];
  List<String> catItems = ['Outer', 'Dress', 'Blouse/Shirt', 'Skirt', 'Pants'];
  List<int> lstExpandedCategory = [];

  void onCallPressed() {}

  void onStoreLocationPressed() {}

  bool isExpanded(int index) {
    if (lstExpandedCategory.contains(index)) {
      return true;
    }
    return false;
  }

  void onExpansionChanged(int index, bool value) {
    if (lstExpandedCategory.contains(index)) {
      lstExpandedCategory.remove(index);
    } else {
      lstExpandedCategory.add(index);
    }
    notifyListeners();
  }

  void onCateItemPressed() {
    popToRoot(context);
    push(context, createCategory());
  }
}
