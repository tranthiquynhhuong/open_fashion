library test;

import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

part 'test_model.dart';
part 'test_view.dart';
part 'test_state.dart';

ChangeNotifierProvider<TestModel> createTest() => ChangeNotifierProvider<TestModel>(
      create: (context) => TestModel(),
      builder: (context, child) => const Test(),
    );
