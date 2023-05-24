// ignore_for_file: library_private_types_in_public_api

library add_new_card;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:open_fashion/widget/widget.dart';

part 'add_new_card_view.dart';
part 'add_new_card_model.dart';
part 'add_new_card_state.dart';

ChangeNotifierProvider<_AddNewCardModel> createAddNewCard() {
  return ChangeNotifierProvider<_AddNewCardModel>(
    create: (_) => _AddNewCardModel(),
    child: _AddNewCardView(),
  );
}
