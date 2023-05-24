// ignore_for_file: unnecessary_non_null_assertion

import 'package:flutter/material.dart';
import 'package:open_fashion/utils/utils.dart';

/// Call the [onCallback] function after [milliseconds]
Future postDelay(int milliseconds, [VoidCallback? onCallback]) {
  return Future.delayed(milliseconds.milliseconds(), onCallback);
}

/// Call the [onCallback] function after binding frame
/// When [WidgetsBinding] instance unavailable,
/// [onCallback] will fire after 300 milliseconds.
void postAfter([VoidCallback? onCallback]) {
  if (onCallback != null) {
    final instance = WidgetsBinding.instance;
    instance.addPostFrameCallback((_) {
      onCallback();
    });
  }
}
