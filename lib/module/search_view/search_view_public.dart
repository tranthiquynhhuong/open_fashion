// ignore_for_file: library_private_types_in_public_api

library search_view;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'search_view_view.dart';
part 'search_view_model.dart';
part 'search_view_state.dart';

ChangeNotifierProvider<_SearchViewModel> createSearchView() {
  return ChangeNotifierProvider<_SearchViewModel>(
    create: (_) => _SearchViewModel(),
    child: _SearchViewView(),
  );
}
