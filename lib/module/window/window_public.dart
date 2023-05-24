// ignore_for_file: library_private_types_in_public_api

library window;

import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'window_view.dart';
part 'window_model.dart';
part 'window_state.dart';

ChangeNotifierProvider<_WindowModel> createWindow() {
  return ChangeNotifierProvider<_WindowModel>(
    create: (_) => _WindowModel(),
    child: _WindowView(),
  );
}
