// ignore_for_file: library_private_types_in_public_api

library collection;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'collection_view.dart';
part 'collection_model.dart';
part 'collection_state.dart';

ChangeNotifierProvider<_CollectionModel> createCollection() {
  return ChangeNotifierProvider<_CollectionModel>(
    create: (_) => _CollectionModel(),
    child: _CollectionView(),
  );
}
