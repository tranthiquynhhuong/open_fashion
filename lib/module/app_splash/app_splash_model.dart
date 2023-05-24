part of app_splash;

class _AppSplashModel extends TTChangeNotifier<_AppSplashView> {
  _AppSplashModel() {
    goHome();
  }

  Future goHome() async {
    await postDelay(2000).then((_) => setRoot(context, createHome()));
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void dispose() {
    super.dispose();
  }
}
