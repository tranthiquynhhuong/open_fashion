// ignore_for_file: library_private_types_in_public_api

library search_recent;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'search_recent_view.dart';
part 'search_recent_model.dart';
part 'search_recent_state.dart';

ChangeNotifierProvider<_SearchRecentModel> createSearchRecent() {
  return ChangeNotifierProvider<_SearchRecentModel>(
    create: (_) => _SearchRecentModel(),
    child: _SearchRecentView(),
  );
}
