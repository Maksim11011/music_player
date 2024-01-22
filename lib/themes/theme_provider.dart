import 'package:flutter/material.dart';
import 'package:music_player/themes/dark_mode.dart';
import 'package:music_player/themes/light_model.dart';

class ThemeProvider extends ChangeNotifier {
  // initially lightmode
  ThemeData _themeDate = lightMode;

  // get theme
  ThemeData get themeData => _themeDate;

  // is dark mode
  bool get isDarkMode => _themeDate == darkMode;

  // set theme
  set themeData(ThemeData themeData) {
    _themeDate = themeData;
    notifyListeners();

    // update UI
    notifyListeners();
  }

  // toggle theme
  void toggleTheme() {
    if (_themeDate == lightMode) {
      themeData = darkMode;
    } else {
      themeData = lightMode;
    }
  }
}
