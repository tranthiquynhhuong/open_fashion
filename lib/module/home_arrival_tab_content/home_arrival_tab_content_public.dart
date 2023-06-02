// ignore_for_file: library_private_types_in_public_api

library home_arrival_tab_content;

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'home_arrival_tab_content_view.dart';
part 'home_arrival_tab_content_model.dart';
part 'home_arrival_tab_content_state.dart';

ChangeNotifierProvider<_HomeArrivalTabContentModel> createHomeArrivalTabContent() {
  return ChangeNotifierProvider<_HomeArrivalTabContentModel>(
    create: (_) => _HomeArrivalTabContentModel(),
    child: _HomeArrivalTabContentView(),
  );
}
