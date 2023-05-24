import 'package:flutter/material.dart';
import 'package:open_fashion/res/res.dart';

class TTheme {
  TTheme._();

  static ThemeData get customTheme {
    return ThemeData(
      fontFamily: Font.tenorSans,
      scaffoldBackgroundColor: Cl.white,
      backgroundColor: Cl.white,
      colorScheme: const ColorScheme.light().copyWith(primary: Cl.primary),
      appBarTheme: AppBarTheme(
        elevation: 0,
        scrolledUnderElevation: 2,
        titleTextStyle: St.title_18_regular.copyWith(color: Cl.black),
        backgroundColor: Cl.white,
        centerTitle: true,
      ),
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: Cl.white,
        selectedItemColor: Cl.place_holder,
        unselectedItemColor: Cl.place_holder,
        type: BottomNavigationBarType.fixed,
        elevation: 0,
        selectedLabelStyle: St.title_18_regular,
        unselectedLabelStyle: St.title_18_regular,
      ),
    );
  }
}
