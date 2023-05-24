part of app_splash;

class _AppSplashViewState extends TTState<_AppSplashModel, _AppSplashView> {
  @override
  Widget buildWithModel(BuildContext context, _AppSplashModel model) {
    return ColoredBox(
      color: Cl.line,
      child: Center(
        child: Image.asset(
          Id.logo,
          fit: BoxFit.cover,
        ),
      ),
    );
  }
}
