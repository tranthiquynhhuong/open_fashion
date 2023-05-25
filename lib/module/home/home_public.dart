// ignore_for_file: library_private_types_in_public_api

library home;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/tt_wrap_tag.p.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'home_view.dart';
part 'home_model.dart';
part 'home_state.dart';

ChangeNotifierProvider<_HomeModel> createHome() {
  return ChangeNotifierProvider<_HomeModel>(
    create: (_) => _HomeModel(),
    child: _HomeView(),
  );
}
