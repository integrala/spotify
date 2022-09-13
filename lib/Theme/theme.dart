import 'package:flutter/material.dart';

class ThemeCustom {
  final _lightColor = _Colors();

  late ThemeData theme;

  ThemeCustom() {
    theme = ThemeData(
        iconTheme: const IconThemeData(color: Colors.white),
        appBarTheme: const AppBarTheme(backgroundColor: Colors.transparent, elevation: 0),
        scaffoldBackgroundColor: Colors.white.withOpacity(0.9),
        floatingActionButtonTheme: const FloatingActionButtonThemeData(),
        buttonTheme: const ButtonThemeData(),
        colorScheme: const ColorScheme.light(),
        checkboxTheme: const CheckboxThemeData(),
        textTheme: ThemeData.light().textTheme.copyWith());
  }
}

class _Colors {
  final Color _textColor = const Color.fromARGB(255, 78, 18, 18);
  final Color blueMenia = const Color.fromARGB(95, 167, 202, 70);
}































/* 
themedark = ThemeData.dark().copyWith(
      progressIndicatorTheme: const ProgressIndicatorThemeData(color: Colors.white),
      listTileTheme: const ListTileThemeData(contentPadding: EdgeInsets.zero),
      cardTheme: CardTheme(shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20))),
      //errorColor: ColorsItems.sulu,
      appBarTheme: const AppBarTheme(
        centerTitle: true,
        //systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      textTheme: const TextTheme(subtitle1: TextStyle(color: Colors.black)),
      textSelectionTheme: const TextSelectionThemeData(
          selectionColor: Colors.red, cursorColor: Colors.green, selectionHandleColor: Colors.black),
      inputDecorationTheme: InputDecorationTheme(
          hintStyle: const TextStyle(color: Colors.black),
          filled: true,
          fillColor: Colors.blue.shade50,
          iconColor: Colors.blue,
          labelStyle: const TextStyle(color: Colors.lime),
          border: const OutlineInputBorder(),
          floatingLabelStyle: const TextStyle(color: Colors.blue, fontSize: 24, fontWeight: FontWeight.w600)),
    ); */