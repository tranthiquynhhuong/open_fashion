// ignore_for_file: library_private_types_in_public_api

library blog_post;

import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';
import 'package:webview_flutter/webview_flutter.dart';
// Import for Android features.
import 'package:webview_flutter_android/webview_flutter_android.dart';
// Import for iOS features.
import 'package:webview_flutter_wkwebview/webview_flutter_wkwebview.dart';

part 'blog_post_view.dart';
part 'blog_post_model.dart';
part 'blog_post_state.dart';

ChangeNotifierProvider<_BlogPostModel> createBlogPost() {
  return ChangeNotifierProvider<_BlogPostModel>(
    create: (_) => _BlogPostModel(),
    child: _BlogPostView(),
  );
}
