import 'package:flutter/material.dart';
import 'package:flutter_testing/presentation/core/style/app_color.dart';

part 'buttons/text_button.dart';
part 'buttons/elevated_button.dart';
part 'text/text_theme.dart';
part 'input/input_decoration.dart';

ThemeData buildCustomTheme() {
  return ThemeData(
    textTheme: _textTheme,
    textButtonTheme: _textButtonTheme,
    elevatedButtonTheme: _elevatedButtonTheme,
    inputDecorationTheme: _inputDecoration,
  );
}
