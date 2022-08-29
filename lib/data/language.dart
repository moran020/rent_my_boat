import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
//import 'package:flutter_gen/gen_l10n/app_localizations.dart';

class Language {
  final int id;
  final String name;
  final String languageCode;

  Language(this.id, this.name, this.languageCode);

  static List<Language> languageList() {
    return <Language>[
      Language(
        1,
        "English",
        "en",
      ),
      Language(
        2,
        "Русский",
        "ru",
      ),
      Language(
        3,
        "Deutsch",
        "de",
      ),
      Language(
        4,
        "Español",
        "es",
      ),
    ];
  }
}

const String language_code = 'languageCode';

//languages code
const String english = 'en';
const String russian = 'ru';
const String german = 'de';
const String spanish = 'es';

//local storage
Future<Locale> setLocale(String languageCode) async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  await _prefs.setString(language_code, languageCode);
  return _locale(languageCode);
}

Future<Locale> getLocale() async {
  SharedPreferences _prefs = await SharedPreferences.getInstance();
  String languageCode = _prefs.getString(language_code) ?? english;
  return _locale(languageCode);
}

Locale _locale(String languageCode) {
  switch (languageCode) {
    case english:
      return const Locale(english, '');
    case russian:
      return const Locale(russian, "");
    case german:
      return const Locale(german, "");
    case spanish:
      return const Locale(spanish, "");
    default:
      return const Locale(english, '');
  }
}
