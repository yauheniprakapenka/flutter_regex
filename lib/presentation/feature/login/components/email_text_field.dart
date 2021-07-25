part of '../page/login_page.dart';

Widget _buildEmailTextField() {
  return SizedBox(
    height: 90,
    child: TextFormField(
      key: Key(LoginPageKeys.emailKey),
      decoration: InputDecoration(
        hintText: 'email',
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return ValidationError.enterEmail;
        }

        final isValidEmail = validateEmail(value);
        if (!isValidEmail) return ValidationError.incorrectEmail;
        
        return null;
      },
    ),
  );
}
