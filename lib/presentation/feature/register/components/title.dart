part of '../page/register_page.dart';

Widget _buildTitle(BuildContext context) {
  return Text(
    'Регистрация',
    key: Key(RegisterPageKey.titleTextKey),
    style: Theme.of(context).textTheme.headline4,
  );
}
