part of category_list_view;

class _CategoryListViewModel extends TTChangeNotifier<_CategoryListViewView> {
  final listLength = 10;
  final List<String> lstSizeTmp = ['XS', 'S', 'M', 'L', '2XL', '3XL', '4XL', '5XL'];

  onProItemPressed(int index) {
    debugPrint('onProItemPressed');
  }

  onFavoritePressed(int index) {
    debugPrint('onFavoritePressed');
  }
}
