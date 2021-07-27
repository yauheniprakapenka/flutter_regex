import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_testing/domain/utils/validators/email_validator.dart';
import 'package:flutter_testing/presentation/core/constants/keys/login_page.dart';
import 'package:flutter_testing/presentation/core/constants/strings/route_name.dart';
import 'package:flutter_testing/presentation/core/constants/strings/validation_error.dart';
import 'package:flutter_testing/presentation/core/style/app_color.dart';
import 'package:flutter_testing/presentation/core/style/app_padding.dart';

part '../components/email_text_field.dart';
part '../components/phone_text_field.dart';
part '../components/title.dart';

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
              _buildTitle(context),
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
              _buildSuccessText(),
              Spacer(),
              _buildLoginButton(),
              SizedBox(height: 40),
              _buildRegistrationButton(context),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildSuccessText() {
    return ValueListenableBuilder(
      valueListenable: _successLoginText,
      builder: (context, value, child) {
        return Center(
          child: Text(
            _successLoginText.value,
            style: TextStyle(
              color: AppColor.success,
            ),
          ),
        );
      },
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

  Widget _buildRegistrationButton(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          'Нет аккаунта?',
        ),
        TextButton(
          key: Key(LoginPageKeys.registerButtonKey),
          child: Text(
            'Зарегистрироваться',
          ),
          onPressed: () {
            Navigator.pushNamed(context, RouteName.registerPage);
          },
        )
      ],
    );
  }
}
