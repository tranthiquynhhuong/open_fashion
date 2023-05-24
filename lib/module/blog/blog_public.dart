// ignore_for_file: library_private_types_in_public_api

library blog;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'blog_view.dart';
part 'blog_model.dart';
part 'blog_state.dart';

ChangeNotifierProvider<_BlogModel> createBlog() {
  return ChangeNotifierProvider<_BlogModel>(
    create: (_) => _BlogModel(),
    child: _BlogView(),
  );
}
