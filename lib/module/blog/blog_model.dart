part of blog;

class _BlogModel extends TTChangeNotifier<_BlogView> {
  int tabIndex = 0;
  List<String> blogCategories = ['Fashion', 'Promo', 'Policy', 'Lookbook', 'Sale'];

  PageController pageController = PageController();

  onTabChange(int index) {
    if (tabIndex != index) {
      tabIndex = index;
      pageController.animateToPage(index, duration: 200.milliseconds(), curve: Curves.easeIn);
    }
    notifyListeners();
  }

  void onLoadMore() {}

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  void bookmarkBlog() {
    debugPrint('bookmarkBlog');
  }

  void onBlogPressed() {
    push(context, createBlogPost());
  }
}
