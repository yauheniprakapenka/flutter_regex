import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_testing/domain/utils/validators/email_validator.dart';
import 'package:flutter_testing/presentation/core/constants/keys/login_page.dart';
import 'package:flutter_testing/presentation/core/constants/strings/validation_error.dart';
import 'package:flutter_testing/presentation/core/style/app_padding.dart';

part '../components/email_text_field.dart';
part '../components/phone_text_field.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _successLoginText = ValueNotifier<String>('');

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Padding(
          padding: AppPadding.all,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Вход',
                key: Key(LoginPageKeys.titleTextKey),
                style: Theme.of(context).textTheme.headline4,
              ),
              SizedBox(height: 100),
              Center(
                child: Container(
                  height: 180,
                  child: Form(
                    key: _formKey,
                    child: Column(
                      children: [
                        _buildEmailTextField(),
                        _buildPasswordTextField(),
                      ],
                    ),
                  ),
                ),
              ),
              ValueListenableBuilder(
                valueListenable: _successLoginText,
                builder: (context, value, child) {
                  return Text(_successLoginText.value);
                },
              ),
              Spacer(),
              _buildLoginButton(),
              SizedBox(height: 40),
              _buildRegistrationButton(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildLoginButton() {
    return ElevatedButton(
      key: Key(LoginPageKeys.loginButtonKey),
      child: Text('Войти'.toUpperCase()),
      onPressed: () {
        if (!_formKey.currentState!.validate()) {
          _successLoginText.value = '';
          return;
        }
        _successLoginText.value = 'Авторизация успешна';
      },
    );
  }

  Widget _buildRegistrationButton() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Нет аккаунта?',
        ),
        TextButton(
          child: Text(
            'Зарегистрироваться',
          ),
          onPressed: () {},
        )
      ],
    );
  }
}
