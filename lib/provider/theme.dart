import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ThemeChanger with ChangeNotifier {
  ThemeData _themeData;

  ThemeChanger(this._themeData);

  getTheme() => _themeData;

  _changeThemePref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    _themeData == ThemeData.light()
        ? prefs.setBool("theme", true)
        : prefs.setBool("theme", false);
  }

  setTheme(ThemeData themeData) {
    _themeData = themeData;
    notifyListeners();

    _changeThemePref();
  }

  getThemePref() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool("theme");
  }

  String getActualTheme() {
    if (_themeData == ThemeData.light()) {
      return "Light theme mode";
    } else {
      return "Dark theme mode";
    }
  }
}
