part of '../theme.dart';

final _textButtonTheme = TextButtonThemeData(
  style: TextButton.styleFrom(
    primary: AppColor.buttonPrimaryColor,
    minimumSize: Size(0, 36),
    padding: EdgeInsets.symmetric(horizontal: 4.0),
    shape: const RoundedRectangleBorder(
      borderRadius: BorderRadius.all(Radius.circular(4.0)),
    ),
  ),
);
