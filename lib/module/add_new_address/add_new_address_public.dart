// ignore_for_file: library_private_types_in_public_api

library add_new_address;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'add_new_address_view.dart';
part 'add_new_address_model.dart';
part 'add_new_address_state.dart';

ChangeNotifierProvider<_AddNewAddressModel> createAddNewAddress() {
  return ChangeNotifierProvider<_AddNewAddressModel>(
    create: (_) => _AddNewAddressModel(),
    child: _AddNewAddressView(),
  );
}
