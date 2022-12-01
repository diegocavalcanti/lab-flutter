import 'package:flutter/material.dart';

class AppTheme {
  final double textMultiplier;

  const AppTheme({required this.textMultiplier});

  static const Color appBackgroundColor = Color(0xFFFFF7EC);
  static const Color topBarBackgroundColor = Color(0xFFFFD974);
  static const Color selectedTabBackgroundColor = Color(0xFFFFC442);
  static const Color unSelectedTabBackgroundColor = Color(0xFFFFFFFC);
  static const Color subTitleTextColor = Color(0xFF9F988F);

  ThemeData get lightTheme => ThemeData(
      scaffoldBackgroundColor: appBackgroundColor,
    brightness: Brightness.light,
    textTheme: lightTextTheme,
      navigationBarTheme: const NavigationBarThemeData(backgroundColor: topBarBackgroundColor)
  );

  ThemeData get darkTheme => ThemeData(
    scaffoldBackgroundColor: Colors.black,
    brightness: Brightness.dark,
    textTheme: darkTextTheme,
  );

  TextTheme get lightTextTheme => TextTheme(
    headline6: _titleLight,
    subtitle1: _subTitleLight,
    subtitle2: _subTitleLight,
    button: _buttonLight,
    headline1: _greetingLight,
    headline2: _searchLight,
    bodyText1: _selectedTabLight,
    bodyText2: _unSelectedTabLight,
  );

  TextTheme get darkTextTheme => TextTheme(
    headline6: _titleDark,
    subtitle1: _subTitleDark,
    subtitle2: _subTitleDark,
    button: _buttonDark,
    headline1: _greetingDark,
    headline2: _searchDark,
    bodyText1: _selectedTabDark,
    bodyText2: _unSelectedTabDark,
  );

  TextStyle get _titleLight => TextStyle(
    color: Colors.black,
    fontSize: 3.5 * textMultiplier,
  );

  TextStyle get _subTitleLight => TextStyle(
    color: subTitleTextColor,
    fontSize: 2 * textMultiplier,
    height: 1.5,
  );

  TextStyle get _buttonLight => TextStyle(
    color: Colors.black,
    fontSize: 2.5 * textMultiplier,
  );

  TextStyle get _greetingLight => TextStyle(
    color: Colors.black,
    fontSize: 2.0 * textMultiplier,
  );

  TextStyle get _searchLight => TextStyle(
    color: Colors.black,
    fontSize: 2.3 * textMultiplier,
  );

  TextStyle get _selectedTabLight => TextStyle(
    color: Colors.black,
    fontWeight: FontWeight.bold,
    fontSize: 2 * textMultiplier,
  );

  TextStyle get _unSelectedTabLight => TextStyle(
    color: Colors.grey,
    fontSize: 2 * textMultiplier,
  );

  TextStyle get _titleDark => _titleLight.copyWith(color: Colors.white);

  TextStyle get _subTitleDark => _subTitleLight.copyWith(color: Colors.white70);

  TextStyle get _buttonDark => _buttonLight.copyWith(color: Colors.black);

  TextStyle get _greetingDark => _greetingLight.copyWith(color: Colors.black);

  TextStyle get _searchDark => _searchDark.copyWith(color: Colors.black);

  TextStyle get _selectedTabDark => _selectedTabDark.copyWith(color: Colors.white);

  TextStyle get _unSelectedTabDark => _selectedTabDark.copyWith(color: Colors.white70);
}
