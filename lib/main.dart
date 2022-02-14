import 'package:flutter/material.dart';
import 'package:mortage_app/ui/mortgage_app.dart';

final ThemeData _appTheme = _buildAppTheme();

ThemeData _buildAppTheme() {
  final ThemeData base = ThemeData.light();

  return base;
}

void main() => runApp(MaterialApp(
      theme: _appTheme,
      home: MortgageApp(),
    ));
