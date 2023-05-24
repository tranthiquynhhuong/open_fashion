part of app;

class _AppViewState extends TTState<_AppModel, _AppView> with WidgetsBindingObserver {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addObserver(this);
  }

  @override
  void didChangeAppLifecycleState(AppLifecycleState state) {
    super.didChangeAppLifecycleState(state);
    switch (state) {
      case AppLifecycleState.resumed:
        if (mounted) {
          // modelSafe?.forceRefreshToken();
        }
        break;
      default:
    }
  }

  @override
  Widget buildWithModel(BuildContext context, _AppModel model) {
    return Environment(
      // backgroundChild: createAppSplash(),
      initServices: () async {
        await initLangSrv();
      },
      providers: [
        ChangeNotifierProvider.value(value: langSrv),
      ],
      child: MaterialApp(
        themeMode: ThemeMode.light,
        navigatorKey: globalNavigator,
        debugShowCheckedModeBanner: false,
        home: createAppSplash(),
      ),
    );
  }
}
