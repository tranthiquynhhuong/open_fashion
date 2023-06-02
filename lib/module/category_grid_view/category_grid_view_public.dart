// ignore_for_file: library_private_types_in_public_api

library category_grid_view;

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'category_grid_view_view.dart';
part 'category_grid_view_model.dart';
part 'category_grid_view_state.dart';

ChangeNotifierProvider<_CategoryGridViewModel> createCategoryGridView() {
  return ChangeNotifierProvider<_CategoryGridViewModel>(
    create: (_) => _CategoryGridViewModel(),
    child: _CategoryGridViewView(),
  );
}
