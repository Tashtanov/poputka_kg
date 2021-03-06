import 'package:flutter/material.dart';

class ThemeProvider extends ChangeNotifier {
  ThemeMode themeMode = ThemeMode.light;

  bool get isDarkMode => themeMode == ThemeMode.dark;

  void toggleTheme(bool isOn) {
    themeMode = isOn ? ThemeMode.dark : ThemeMode.light;
    notifyListeners();
  }
}

class MyTheme {
  static final darkTheme = ThemeData(
    scaffoldBackgroundColor: Colors.black,
    colorScheme: ColorScheme.dark(),
    primaryColor: Colors.black,
    visualDensity: VisualDensity.adaptivePlatformDensity,
    primaryColorLight: Colors.white,
  );
  static final lightTheme = ThemeData(
      scaffoldBackgroundColor: Colors.white,
      colorScheme: ColorScheme.light(),
      primaryColor: Colors.white,
      visualDensity: VisualDensity.adaptivePlatformDensity,
      primaryColorLight: Colors.black
  );
}
