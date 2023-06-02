// ignore_for_file: library_private_types_in_public_api

library product_detail_full_screen_view;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'product_detail_full_screen_view_view.dart';
part 'product_detail_full_screen_view_model.dart';
part 'product_detail_full_screen_view_state.dart';

ChangeNotifierProvider<_ProductDetailFullScreenViewModel> createProductDetailFullScreenView() {
  return ChangeNotifierProvider<_ProductDetailFullScreenViewModel>(
    create: (_) => _ProductDetailFullScreenViewModel(),
    child: _ProductDetailFullScreenViewView(),
  );
}
