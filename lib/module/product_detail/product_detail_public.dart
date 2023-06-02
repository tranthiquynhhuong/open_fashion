// ignore_for_file: library_private_types_in_public_api

library product_detail;

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/tt_select_btn.dart';
import 'package:open_fashion/widget/tt_suggest_widget.p.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'product_detail_view.dart';
part 'product_detail_model.dart';
part 'product_detail_state.dart';

ChangeNotifierProvider<_ProductDetailModel> createProductDetail() {
  return ChangeNotifierProvider<_ProductDetailModel>(
    create: (_) => _ProductDetailModel(),
    child: _ProductDetailView(),
  );
}
