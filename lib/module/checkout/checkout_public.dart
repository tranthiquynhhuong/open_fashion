// ignore_for_file: library_private_types_in_public_api

library checkout;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'checkout_view.dart';
part 'checkout_model.dart';
part 'checkout_state.dart';

ChangeNotifierProvider<_CheckoutModel> createCheckout() {
  return ChangeNotifierProvider<_CheckoutModel>(
    create: (_) => _CheckoutModel(),
    child: _CheckoutView(),
  );
}
