part of home_menu;

class _HomeMenuModel extends TTChangeNotifier<_HomeMenuView> {
  int tabIndex = 0;
  List<String> tabLabels = ['WOMEN', 'MAN', 'KID'];

  PageController controller = PageController();

  void exitPressed() {
    pop(context);
  }

  void onTabChanged(int index) {
    debugPrint('TabIndex: $tabIndex --  index: $index');
    if (tabIndex != index) {
      tabIndex = index;
      controller.animateToPage(index, duration: 200.milliseconds(), curve: Curves.easeIn);
    }
    notifyListeners();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }
}
