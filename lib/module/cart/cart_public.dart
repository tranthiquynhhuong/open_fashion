// ignore_for_file: library_private_types_in_public_api

library cart;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'cart_view.dart';
part 'cart_model.dart';
part 'cart_state.dart';

ChangeNotifierProvider<_CartModel> createCart() {
  return ChangeNotifierProvider<_CartModel>(
    create: (_) => _CartModel(),
    child: _CartView(),
  );
}
