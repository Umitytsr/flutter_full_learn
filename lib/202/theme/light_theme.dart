import 'package:flutter/material.dart';

class LightTheme{
  final _lightColor = _LightColor();
  late final ThemeData theme; 

  LightTheme(){
    theme = ThemeData(
      appBarTheme: const AppBarTheme(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.vertical(bottom: Radius.circular(20)))
      ),
      scaffoldBackgroundColor: Colors.white.withOpacity(0.8),
      floatingActionButtonTheme: const FloatingActionButtonThemeData(backgroundColor: Colors.green),
      buttonTheme:ButtonThemeData(
        colorScheme: ColorScheme.light(onPrimary: Colors.purple,onSecondary: _lightColor._bluMania)
      ),
      colorScheme: const ColorScheme.light(),
      checkboxTheme: CheckboxThemeData(
        fillColor: MaterialStateProperty.all(Colors.green), side: const BorderSide(color: Colors.green)
      ),
      textTheme: ThemeData.light().textTheme.copyWith(
        titleMedium: TextStyle(fontSize: 25,color: _LightColor()._textColor),
      )
    );
  }  
}

class _LightColor{
  final Color _textColor = Colors.black;
  final Color _bluMania = Color.fromARGB(95, 188, 248,1);
}