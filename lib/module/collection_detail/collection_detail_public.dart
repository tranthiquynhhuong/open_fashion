// ignore_for_file: library_private_types_in_public_api

library collection_detail;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'collection_detail_view.dart';
part 'collection_detail_model.dart';
part 'collection_detail_state.dart';

ChangeNotifierProvider<_CollectionDetailModel> createCollectionDetail() {
  return ChangeNotifierProvider<_CollectionDetailModel>(
    create: (_) => _CollectionDetailModel(),
    child: _CollectionDetailView(),
  );
}
