// ignore_for_file: recursive_getters

import 'package:flutter/material.dart';
import 'package:open_fashion/config/tt_key_config.p.dart';
import 'package:open_fashion/utils/utils.dart';

class ProductInfo extends ChangeNotifier {
  final _data = {};

  int get id => _data.gInt(kId);
  String get name => _data.str(kName);
  String? get imageUrl => _data.str(kImageUrl);
  String? get description => _data.str(kDescription);
  double get rating => _data.gDouble(kRating);
  bool get isFavrorite => _data.gBool(isFavrorite);

  // set isFavorite(bool? v) => _data[isFavrorite] = v ?? false;

  ProductInfo(Map e) {
    _data.addAll(e);
  }

  void fill(Map data) {
    _data.addAll(data);
    notifyListeners();
  }
}
