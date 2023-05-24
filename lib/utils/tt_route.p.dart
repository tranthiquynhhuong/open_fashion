import 'package:flutter/material.dart';

///---------------------
/// PUSH
///---------------------

Future<T?> push<T>(
  BuildContext context,
  Widget page, {
  RouteSettings? settings,
  bool fullscreenDialog = false,
  bool rootNavigator = false,
}) {
  return Navigator.of(context, rootNavigator: rootNavigator).push(
    MaterialPageRoute(
      builder: (_) => page,
      settings: settings,
      fullscreenDialog: fullscreenDialog,
    ),
  );
}

Future<T?> pushBuilder<T>(BuildContext context, WidgetBuilder builder) {
  return Navigator.of(context).push(MaterialPageRoute(builder: builder));
}

Future<T?> pushReplace<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushReplacement(MaterialPageRoute(builder: (_) => page));
}

///---------------------
/// ROOT
///---------------------

Future<T?> setRoot<T>(BuildContext context, Widget page) {
  return Navigator.of(context).pushAndRemoveUntil(
    MaterialPageRoute(builder: (_) => page),
    (_) => false,
  );
}

///---------------------
/// PRESENT
///---------------------

Future<T?> presentFade<T>(BuildContext context, Widget page, {Color? barrierColor}) {
  return presentDefault(
    context,
    page,
    barrierColor: barrierColor,
  );
}

Future<T?> present<T>(BuildContext context, Widget page, {Color? barrierColor}) {
  return presentDefault(
    context,
    page,
    barrierColor: barrierColor,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(begin: const Offset(0.0, 1.0), end: const Offset(0, 0)).chain(
        CurveTween(curve: Curves.ease),
      );
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

Future<T?> presentDefault<T>(
  BuildContext context,
  Widget page, {
  Widget Function(BuildContext, Animation<double>, Animation<double>, Widget)? transitionsBuilder,
  Color? barrierColor,
}) {
  transitionsBuilder ??= (_, __, ___, child) => child;
  return Navigator.of(context).push(
    PageRouteBuilder(
      pageBuilder: (context, _, __) => page,
      opaque: false,
      barrierDismissible: false,
      barrierColor: barrierColor ?? Colors.black.withOpacity(0.6),
      fullscreenDialog: true,
      transitionsBuilder: transitionsBuilder,
    ),
  );
}

Future<T?> presentRight<T>(BuildContext context, Widget page, {Color? barrierColor}) {
  return presentDefault(
    context,
    page,
    barrierColor: barrierColor,
    transitionsBuilder: (context, animation, secondaryAnimation, child) {
      final tween = Tween(begin: const Offset(1.0, 0.0), end: const Offset(0, 0)).chain(
        CurveTween(curve: Curves.ease),
      );
      return SlideTransition(
        position: animation.drive(tween),
        child: child,
      );
    },
  );
}

///---------------------
/// POP
///---------------------

void popToRoot(BuildContext context) {
  Navigator.of(context).popUntil((r) => r.isFirst);
}

void pop<T>(BuildContext context, [T? v]) {
  if (Navigator.of(context).canPop()) {
    Navigator.of(context).pop(v);
  }
}
