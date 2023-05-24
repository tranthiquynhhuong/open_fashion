// ignore_for_file: library_private_types_in_public_api

library full_screen_view;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'full_screen_view_view.dart';
part 'full_screen_view_model.dart';
part 'full_screen_view_state.dart';

ChangeNotifierProvider<_FullScreenViewModel> createFullScreenView() {
  return ChangeNotifierProvider<_FullScreenViewModel>(
    create: (_) => _FullScreenViewModel(),
    child: _FullScreenViewView(),
  );
}
