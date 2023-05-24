// ignore_for_file: library_private_types_in_public_api

library app_splash;

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'app_splash_view.dart';
part 'app_splash_model.dart';
part 'app_splash_state.dart';

ChangeNotifierProvider<_AppSplashModel> createAppSplash() {
  return ChangeNotifierProvider<_AppSplashModel>(
    create: (_) => _AppSplashModel(),
    child: _AppSplashView(),
  );
}
