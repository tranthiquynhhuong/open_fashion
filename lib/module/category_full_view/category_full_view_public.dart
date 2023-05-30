// ignore_for_file: library_private_types_in_public_api

library category_full_view;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'category_full_view_view.dart';
part 'category_full_view_model.dart';
part 'category_full_view_state.dart';

ChangeNotifierProvider<_CategoryFullViewModel> createCategoryFullView() {
  return ChangeNotifierProvider<_CategoryFullViewModel>(
    create: (_) => _CategoryFullViewModel(),
    child: _CategoryFullViewView(),
  );
}
