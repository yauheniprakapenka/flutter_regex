part of '../page/login_page.dart';

Widget _buildPasswordTextField() {
  return Container(
    height: 90,
    child: TextFormField(
      key: Key(LoginPageKeys.phoneKey),
      decoration: InputDecoration(
        hintText: 'Телефон',
      ),
      inputFormatters: [
        FilteringTextInputFormatter.digitsOnly,
      ],
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ValidationError.enterPhone;
        }
        return null;
      },
    ),
  );
}
