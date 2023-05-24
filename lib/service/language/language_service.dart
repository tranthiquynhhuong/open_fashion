library language_srv;

import 'package:flutter/material.dart';
import 'package:open_fashion/utils/utils.dart';

part 'app_localizations.dart';

class LanguageService extends ChangeNotifier {
  static LanguageService? _sInstance;

  LanguageService._();

  factory LanguageService.shared() {
    return _sInstance ??= LanguageService._();
  }

  static void init() {}

  static Future initLangs() {
    return postDelay(2000);
  }

  void changeLaguage() {}
}

LanguageService get langSrv => LanguageService.shared();

Future initLangSrv() => LanguageService.initLangs();
