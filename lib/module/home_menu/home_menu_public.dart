// ignore_for_file: library_private_types_in_public_api

library home_menu;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'home_menu_view.dart';
part 'home_menu_model.dart';
part 'home_menu_state.dart';

ChangeNotifierProvider<_HomeMenuModel> createHomeMenu() {
  return ChangeNotifierProvider<_HomeMenuModel>(
    create: (_) => _HomeMenuModel(),
    child: _HomeMenuView(),
  );
}
