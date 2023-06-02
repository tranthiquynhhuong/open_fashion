// ignore_for_file: library_private_types_in_public_api

library category_list_view;

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/picture.p.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:open_fashion/widget/tt_select_btn.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'category_list_view_view.dart';
part 'category_list_view_model.dart';
part 'category_list_view_state.dart';

ChangeNotifierProvider<_CategoryListViewModel> createCategoryListView() {
  return ChangeNotifierProvider<_CategoryListViewModel>(
    create: (_) => _CategoryListViewModel(),
    child: _CategoryListViewView(),
  );
}
