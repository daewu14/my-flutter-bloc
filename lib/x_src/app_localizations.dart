import 'package:flutter/material.dart';
import 'x_r.dart';

import 'my_config.dart';

/// createdby Daewu Bintara
/// Tuesday, 3/2/21

class AppLocalizations {

  final Locale locale;

  AppLocalizations(this.locale);

  /// to get active current Locale
  static Locale getCurrentLocale() {
    String langCode = box.read(MyConfig.LOCAL_KEY);
    Locale locale = langCode == null ? Locale('id') : Locale(langCode);
    box.write(MyConfig.LOCAL_KEY, locale.languageCode);
    return locale;
  }

  /// set new Locale
  /// you must refresh your main state on MaterialApp
  static Locale setLocale(Locale locale) {
    box.write(MyConfig.LOCAL_KEY, locale.languageCode);
    return locale;
  }

  /// Helper method to keep the code in the widgets concise
  /// Localizations are accessed using an InheritedWidget "of" syntax
  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations);
  }

  /// Static member to have a simple access to the delegate from the MaterialApp
  static const LocalizationsDelegate<AppLocalizations> delegate =
  _AppLocalizationsDelegate();

  Map<String, String> _localizedStrings;

  Future<bool> load() async {
    Translation translation = Translation();

    Map<String, dynamic> jsonMap = translation.keys['${locale.languageCode}'];

    _localizedStrings = jsonMap.map((key, value) {
      return MapEntry(key, value.toString());
    });

    return true;
  }

  String translate(String key) {
    return _localizedStrings[key];
  }

}

class _AppLocalizationsDelegate
    extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  // add all languages code here
  @override
  bool isSupported(Locale locale) {
    return ['id', 'en'].contains(locale.languageCode);
  }

  // load all localization files
  @override
  Future<AppLocalizations> load(Locale locale) async {
    AppLocalizations localizations = new AppLocalizations(locale);
    await localizations.load();
    return localizations;
  }

  @override
  bool shouldReload(LocalizationsDelegate<AppLocalizations> old) => false;
}