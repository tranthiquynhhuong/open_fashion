part of category_grid_view;

class _CategoryGridViewModel extends TTChangeNotifier<_CategoryGridViewView> {
  void onItemClick(int index) {
    push(context, createProductDetail());
  }

  onItemFavoriteCLick(int index) {}
}
