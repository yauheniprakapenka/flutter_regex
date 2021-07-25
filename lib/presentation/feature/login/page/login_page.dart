import 'package:flutter/material.dart';
import 'package:flutter_testing/presentation/core/style/app_padding.dart';

part '../components/email_text_field.dart';
part '../components/password_text_field.dart';

class LoginPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();

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
              Text('Вход', style: Theme.of(context).textTheme.headline4),
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
              Spacer(),
              ElevatedButton(
                child: Text('Войти'.toUpperCase()),
                onPressed: () {},
              ),
              SizedBox(height: 40),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Нет аккаунта?',
                  ),
                  TextButton(
                    child: Text(
                      'Зарегистрироваться',
                    ),
                    onPressed: () {
                      if (!_formKey.currentState!.validate()) {
                        return;
                      }
                    },
                  )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
