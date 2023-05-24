// ignore_for_file: library_private_types_in_public_api

library app;

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/service/service.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'app_view.dart';
part 'app_model.dart';
part 'app_state.dart';

final globalNavigator = GlobalKey<NavigatorState>();

ChangeNotifierProvider<_AppModel> createApp() {
  return ChangeNotifierProvider<_AppModel>(
    create: (_) => _AppModel(),
    child: _AppView(),
  );
}
