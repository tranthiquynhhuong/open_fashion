// ignore_for_file: non_constant_identifier_names

import 'package:flutter/material.dart';
import 'package:open_fashion/module/module.dart';
import 'package:open_fashion/res/res.dart';
import 'package:open_fashion/utils/utils.dart';

Widget buildSliverAppBar(
  BuildContext context, {
  required double expandedHeight,
  required Widget flexibleSpaceChild,
  bool pinned = true,
}) {
  return SliverAppBar(
    scrolledUnderElevation: 0,
    elevation: 0,
    centerTitle: true,
    backgroundColor: Cl.white,
    title: Image.asset(
      Id.logo,
    ),
    leading: IconButton(
      iconSize: 24,
      onPressed: () => presentLeft(context, createHomeMenu()),
      icon: Image.asset(Id.menu),
    ),
    actions: [
      IconButton(
        iconSize: 24,
        onPressed: () => push(context, createSearchView()),
        icon: Image.asset(Id.search),
      ),
      IconButton(
        iconSize: 24,
        onPressed: () => push(context, createCart()),
        icon: Image.asset(Id.shopping_bag),
      ),
    ],
    expandedHeight: expandedHeight,
    pinned: pinned,
    flexibleSpace: FlexibleSpaceBar(
      collapseMode: CollapseMode.parallax,
      background: SafeArea(
        child: flexibleSpaceChild,
      ),
    ),
  );
}

PreferredSizeWidget MyAppBar(BuildContext context, {Widget? leading}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: AppBar(
      bottomOpacity: 0,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Cl.white,
      title: Image.asset(
        Id.logo,
      ),
      leading: leading ??
          IconButton(
            iconSize: 24,
            onPressed: () => presentLeft(context, createHomeMenu()),
            icon: Image.asset(Id.menu),
          ),
      actions: [
        IconButton(
          iconSize: 24,
          onPressed: () => push(context, createSearchView()),
          icon: Image.asset(Id.search),
        ),
        IconButton(
          iconSize: 24,
          onPressed: () => push(context, createCart()),
          icon: Image.asset(Id.shopping_bag),
        ),
      ],
    ),
  );
}

PreferredSizeWidget MyBackAppBar(BuildContext context, {Widget? title}) {
  return PreferredSize(
    preferredSize: const Size.fromHeight(50),
    child: AppBar(
      bottomOpacity: 0,
      scrolledUnderElevation: 0,
      elevation: 0,
      centerTitle: true,
      backgroundColor: Cl.white,
      leading: IconButton(
        iconSize: 24,
        onPressed: () => pop(context),
        icon: Image.asset(Id.backward),
      ),
    ),
  );
}
