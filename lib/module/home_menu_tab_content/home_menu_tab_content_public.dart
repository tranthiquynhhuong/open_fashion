// ignore_for_file: library_private_types_in_public_api

library home_menu_tab_content;

import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/ui/tt_edge_insets.p.dart';
import 'package:open_fashion/utils/ui/tt_sized_box.p.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'home_menu_tab_content_view.dart';
part 'home_menu_tab_content_model.dart';
part 'home_menu_tab_content_state.dart';

ChangeNotifierProvider<_HomeMenuTabContentModel> createHomeMenuTabContent() {
  return ChangeNotifierProvider<_HomeMenuTabContentModel>(
    create: (_) => _HomeMenuTabContentModel(),
    child: _HomeMenuTabContentView(),
  );
}
