// ignore_for_file: library_private_types_in_public_api

library product_detail;

import 'package:flutter/material.dart';
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
