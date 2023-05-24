import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';

PreferredSizeWidget buildHomeAppBar({
  VoidCallback? onSearchPressed,
  VoidCallback? onShoppingBagPressed,
  VoidCallback? onMenuPressed,
}) {
  return AppBar(
    toolbarHeight: 50,
    bottomOpacity: 0,
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Cl.white,
    title: Image.asset(
      Id.logo,
    ),
    leading: IconButton(
      iconSize: 24,
      onPressed: onMenuPressed,
      icon: Image.asset(Id.menu),
    ),
    actions: [
      IconButton(
        iconSize: 24,
        onPressed: onSearchPressed,
        icon: Image.asset(Id.search),
      ),
      IconButton(
        iconSize: 24,
        onPressed: onShoppingBagPressed,
        icon: Image.asset(Id.shopping_bag),
      ),
    ],
  );
}
