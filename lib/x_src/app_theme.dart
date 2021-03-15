import 'package:flutter/material.dart';
import 'package:get_storage/get_storage.dart';

import 'my_res.dart';

/// createdby Daewu Bintara
/// Friday, 2/26/21

class AppTheme {
  final String _sThemeModeKey = 'S_THEME_MODE_KEY';
  final String _sThemeModeLight = '_sThemeModeLight_';
  final String _sThemeModeDark = '_sThemeModeDark_';

  static String Poppins = "Poppins";
  static String Roboto = "Roboto";
  static String QuicksandRegular = "QuicksandRegular";
  static String QuicksandMedium = "QuicksandMedium";

  static String _fontFamily = QuicksandMedium;

  // LIGHT THEME TEXT
  static final TextTheme _lightTextTheme = TextTheme(
    overline: TextStyle(
        color: MyColor.TEXT_COLOR,
        fontFamily: _fontFamily
    ),
    headline1: TextStyle(fontSize: 20.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    bodyText1: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    button: TextStyle(fontSize: 15.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    headline6: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    subtitle1: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
    caption: TextStyle(fontSize: 12.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR),
  );

  // DARK THEME TEXT
  static final TextTheme _darkTextTheme = TextTheme(
    overline: TextStyle(
        color: MyColor.TEXT_COLOR_DARK,
        fontFamily: _fontFamily
    ),
    headline1: TextStyle(fontSize: 20.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    bodyText1: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    bodyText2: TextStyle(fontSize: 14.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    button: TextStyle(fontSize: 15.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    headline6: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    subtitle1: TextStyle(fontSize: 16.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
    caption: TextStyle(fontSize: 12.0, fontFamily: _fontFamily, color: MyColor.TEXT_COLOR_DARK),
  );

  ThemeData currentTheme() {
    final box = GetStorage();
    String tm = box.read(_sThemeModeKey);
    if (tm == null) {
      box.write(_sThemeModeKey, _sThemeModeLight);
      return _lightTheme;
    } else if (tm == _sThemeModeLight) {
      return _lightTheme;
    } else {
      return _darkTheme;
    }
  }

  // LIGHT THEME
  static final ThemeData _lightTheme = ThemeData(
    fontFamily: _fontFamily,
    primaryColor: MyColor.PRIMARY_COLOR,
    accentColor: MyColor.ACCENT_COLOR,
    backgroundColor: MyColor.LIGHT_BACKGROUND_COLOR,
    scaffoldBackgroundColor: MyColor.LIGHT_BACKGROUND_COLOR,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MyColor.PRIMARY_COLOR,
    ),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: MyColor.PRIMARY_COLOR,
      iconTheme: IconThemeData(color: MyColor.ICON_COLOR),
    ),
    colorScheme: ColorScheme.light(
      primary: MyColor.PRIMARY_COLOR,
      primaryVariant: MyColor.PRIMARY_VARIANT,
    ),
    snackBarTheme:
    SnackBarThemeData(
        backgroundColor: MyColor.DARK_BACKGROUND_COLOR,
        contentTextStyle: _darkTextTheme.subtitle1
    ),
    iconTheme: IconThemeData(
      color: MyColor.ICON_COLOR,
    ),
    popupMenuTheme: PopupMenuThemeData(color: MyColor.LIGHT_BACKGROUND_COLOR),
    textTheme: _lightTextTheme,
  );

  // DARK THEME
  static final ThemeData _darkTheme = ThemeData(
    brightness: Brightness.dark,
    fontFamily: _fontFamily,
    primaryColor: MyColor.PRIMARY_DARK_COLOR,
    accentColor: MyColor.ACCENT_COLOR,
    backgroundColor: MyColor.DARK_BACKGROUND_COLOR,
    scaffoldBackgroundColor: MyColor.DARK_BACKGROUND_COLOR,
    floatingActionButtonTheme: FloatingActionButtonThemeData(
      backgroundColor: MyColor.PRIMARY_DARK_COLOR,
    ),
    appBarTheme: AppBarTheme(
      brightness: Brightness.dark,
      color: MyColor.PRIMARY_DARK_COLOR,
      iconTheme: IconThemeData(color: MyColor.ICON_COLOR_DARK),
    ),
    colorScheme: ColorScheme.dark(
      primary: MyColor.PRIMARY_DARK_COLOR,
      primaryVariant: MyColor.PRIMARY_VARIANT,
    ),
    snackBarTheme:
    SnackBarThemeData(backgroundColor: MyColor.LIGHT_BACKGROUND_COLOR,
      contentTextStyle: _lightTextTheme.subtitle1,
    ),
    iconTheme: IconThemeData(
      color: MyColor.ICON_COLOR_DARK,
    ),
    popupMenuTheme: PopupMenuThemeData(color: MyColor.DARK_BACKGROUND_COLOR),
    textTheme: _darkTextTheme,
  );

  /// Toggles the current brightness between light and dark.
  void togleTheme() {
    final box = GetStorage();
    if (currentTheme().brightness == Brightness.dark) {
      box.write(_sThemeModeKey, _sThemeModeLight);
    } else {
      box.write(_sThemeModeKey, _sThemeModeDark);
    }
  }

}