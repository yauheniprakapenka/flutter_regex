part of '../page/register_page.dart';

Widget _buildPasswordTextField() {
  return SizedBox(
    height: 90,
    child: TextFormField(
      key: Key(RegisterPageKey.passwordKey),
      decoration: InputDecoration(
        hintText: 'Пароль',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ValidationError.enterPassword;
        }
        return null;
      },
    ),
  );
}
