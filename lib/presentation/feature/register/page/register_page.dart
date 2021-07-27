import 'package:flutter/material.dart';
import 'package:flutter_testing/presentation/core/constants/keys/register_page.dart';
import 'package:flutter_testing/presentation/core/constants/strings/validation_error.dart';
import 'package:flutter_testing/presentation/core/style/app_color.dart';
import 'package:flutter_testing/presentation/core/style/app_padding.dart';

part '../components/email_text_field.dart';
part '../components/password_text_field.dart';
part '../components/title.dart';

class RegisterPage extends StatelessWidget {
  final _formKey = GlobalKey<FormState>();
  final _successRegisterText = ValueNotifier<String>('');

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
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                _buildTitle(context),
                SizedBox(height: 100),
                _buildEmailTextField(),
                _buildPasswordTextField(),
                ValueListenableBuilder(
                  valueListenable: _successRegisterText,
                  builder: (context, value, child) {
                    return Center(
                      child: Text(
                        value.toString(),
                        key: Key(RegisterPageKey.successRegistrationKey),
                        style: TextStyle(
                          color: AppColor.success,
                        ),
                      ),
                    );
                  },
                ),
                Spacer(),
                _buildRegisterButton(),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildRegisterButton() {
    return ElevatedButton(
      key: Key(RegisterPageKey.registerButtonKey),
      child: Text('Регистрация'.toUpperCase()),
      onPressed: () {
        if (!_formKey.currentState!.validate()) {
          _successRegisterText.value = '';
          return;
        }
        _successRegisterText.value = 'Регистрация успешна';
      },
    );
  }
}
