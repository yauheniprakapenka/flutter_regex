part of '../page/login_page.dart';

Widget _buildEmailTextField() {
  return SizedBox(
    height: 90,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'Введите пароль',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Введите пароль';
        }
        return null;
      },
    ),
  );
}
