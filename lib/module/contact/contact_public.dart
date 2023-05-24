// ignore_for_file: library_private_types_in_public_api

library contact;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'contact_view.dart';
part 'contact_model.dart';
part 'contact_state.dart';

ChangeNotifierProvider<_ContactModel> createContact() {
  return ChangeNotifierProvider<_ContactModel>(
    create: (_) => _ContactModel(),
    child: _ContactView(),
  );
}
