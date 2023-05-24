// ignore_for_file: library_private_types_in_public_api

library about;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'about_view.dart';
part 'about_model.dart';
part 'about_state.dart';

ChangeNotifierProvider<_AboutModel> createAbout() {
  return ChangeNotifierProvider<_AboutModel>(
    create: (_) => _AboutModel(),
    child: _AboutView(),
  );
}
