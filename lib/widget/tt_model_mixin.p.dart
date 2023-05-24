// ignore_for_file: unnecessary_non_null_assertion

import 'dart:io';

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/utils/utils.dart';

final _ignoreScreens = <String, bool>{
  '_AppView': true,
  '_AppSplashView': true,
};

abstract class TTStatefulWidget extends StatefulWidget {
  TTStatefulWidget({Key? key}) : super(key: key) {
    final name = runtimeType.toString();
    if (_ignoreScreens[name] ?? false) {
      return;
    }
    // Analytics.shared().setScreenName(
    //   name,
    //   screenClass: name,
    // );
  }

  bool get isMobile => Platform.isIOS || Platform.isAndroid;
}

abstract class TTState<V extends ChangeNotifier, T extends StatefulWidget> extends State<T>
    with StateMixin<V, T> {
  @override
  Widget build(BuildContext context) {
    final model = getModel(context);
    return buildWithModel(context, model);
  }

  Widget buildWithModel(BuildContext context, V model);
}

class TTChangeNotifier<T extends StatefulWidget> extends ChangeNotifier with ModelMixin<T> {
  void onDismiss() {
    pop(context);
  }
}

mixin StateMixin<V extends ChangeNotifier, T extends StatefulWidget> on State<T> {
  V get model => Provider.of<V>(context, listen: false);
  V? get modelSafe {
    try {
      return Provider.of<V?>(context, listen: false);
    } catch (_) {}
    return null;
  }

  T get view => widget;

  MediaQueryData get device => MediaQuery.of(context);

  bool get isMobile => Platform.isIOS || Platform.isAndroid;

  // V getModel(BuildContext context) => Provider.of<V>(context);
  // This line same with [getModel] with listen true = context.watch / listen false = context.read
  V getModel(BuildContext context) => context.watch<V>();

  bool get isPhone => device.size.width < 600;

  double get keyboardHeight => EdgeInsets.fromWindowPadding(
        WidgetsBinding.instance.window.viewInsets,
        WidgetsBinding.instance.window.devicePixelRatio,
      ).bottom;

  @override
  void initState() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (mounted) {
        if (model is ModelMixin) {
          (model as ModelMixin)._buildContext = () => context;
          (model as ModelMixin)._buildWidget = () => widget;
          (model as ModelMixin).onReady();
        }
        didInitState();
      }
    });
    super.initState();
  }

  void didInitState() {}
}

mixin ModelMixin<T extends StatefulWidget> on ChangeNotifier {
  BuildContext Function()? _buildContext;
  T Function()? _buildWidget;
  bool _mount = true;

  bool isRoot = false;

  BuildContext get context => _buildContext!();
  T? get view => _buildWidget?.call();
  bool get mount => _mount;

  MediaQueryData get device => () {
        return MediaQuery.of(context);
      }();

  bool get isMobile => Platform.isIOS || Platform.isAndroid;

  bool get isPhone => device.size.width < 600;

  void runOnUI(Function(BuildContext) onCallback, {VoidCallback? onError}) {
    final BuildContext? ctx = _buildContext?.call();
    if (ctx == null) {
      onError?.call();
      return;
    }
    onCallback.call(ctx);
  }

  void onReady() {}

  @override
  void dispose() {
    _buildContext = null;
    _mount = false;
    super.dispose();
  }

  void dismissKeyboard() {
    FocusManager.instance.primaryFocus?.unfocus();
  }
}
