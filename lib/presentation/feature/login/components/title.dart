part of '../page/login_page.dart';

Widget _buildTitle(BuildContext context) {
  return Text(
    'Вход',
    key: Key(LoginPageKeys.titleTextKey),
    style: Theme.of(context).textTheme.headline4,
  );
}
