// ignore_for_file: library_private_types_in_public_api

library category;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'category_view.dart';
part 'category_model.dart';
part 'category_state.dart';

ChangeNotifierProvider<_CategoryModel> createCategory() {
  return ChangeNotifierProvider<_CategoryModel>(
    create: (_) => _CategoryModel(),
    child: _CategoryView(),
  );
}
