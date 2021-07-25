part of '../page/login_page.dart';

Widget _buildPasswordTextField() {
  return Container(
    height: 90,
    child: TextFormField(
      decoration: InputDecoration(
        hintText: 'Введите email',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Введите email';
        }
        return null;
      },
    ),
  );
}
