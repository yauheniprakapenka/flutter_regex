part of '../theme.dart';

final _elevatedButtonTheme = ElevatedButtonThemeData(
  style: ButtonStyle(
    textStyle: MaterialStateProperty.resolveWith(
      (states) => TextStyle(
        fontWeight: FontWeight.bold,
      ),
    ),
    backgroundColor: MaterialStateProperty.resolveWith(
      (states) => AppColor.buttonPrimaryColor,
    ),
    minimumSize: MaterialStateProperty.resolveWith(
      (states) => Size(double.infinity, 50),
    ),
    shape: MaterialStateProperty.resolveWith(
      (states) {
        return RoundedRectangleBorder(
          borderRadius: BorderRadius.all(Radius.circular(25)),
        );
      },
    ),
  ),
);
