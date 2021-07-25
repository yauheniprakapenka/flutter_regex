import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_testing/presentation/core/constants/keys/login_page.dart';
import 'package:flutter_testing/presentation/core/constants/strings/validation_error.dart';

import '../../config/test_config.dart';

class LoginPageObject {
  FlutterDriver driver;

  final _timeout = TestConfig.timeout;

  // Find Keys

  final findTitleKey = find.byValueKey(LoginPageKeys.titleTextKey);
  final findPhoneFieldKey = find.byValueKey(LoginPageKeys.phoneKey);
  final findEmailFieldKey = find.byValueKey(LoginPageKeys.emailKey);
  final findSendButtonKey = find.byValueKey(LoginPageKeys.loginButtonKey);
  final findWelcomeTextKey = find.byValueKey(LoginPageKeys.welcomeTextKey);
  final findLoginButtonKey = find.byValueKey(LoginPageKeys.registerButtonKey);

  LoginPageObject({
    required this.driver,
  });

  // tap

  Future<void> tapOnEmailField() async {
    await driver.tap(
      findEmailFieldKey,
      timeout: _timeout,
    );
  }

  Future<void> tapOnPhoneField() async {
    await driver.tap(
      findPhoneFieldKey,
      timeout: _timeout,
    );
  }

  Future<void> tapOnSendButton() async {
    await driver.tap(
      findSendButtonKey,
      timeout: _timeout,
    );
  }

  Future<void> tapLoginButton() async {
    await driver.tap(
      findLoginButtonKey,
      timeout: _timeout,
    );
  }

  // enter

  Future<void> enterText(String value) async {
    await driver.enterText(
      value,
      timeout: _timeout,
    );
  }

  // find

  Future<String> findTitleText() async {
    return await driver.getText(
      findTitleKey,
      timeout: _timeout,
    );
  }

  Future<String> findWelcomeText() async {
    return await driver.getText(
      findWelcomeTextKey,
      timeout: _timeout,
    );
  }

  // get

  Future<String> getTextFromPhoneField() async {
    return await driver.getText(
      findPhoneFieldKey,
      timeout: _timeout,
    );
  }

  // wait

  Future<void> waitForEmailEmptyPhone() async {
    final text = ValidationError.enterPhone;
    await driver.waitFor(
      find.text(text),
      timeout: _timeout,
    );
  }

  Future<void> waitForEmailEmptyError() async {
    final text = ValidationError.enterEmail;
    await driver.waitFor(
      find.text(text),
      timeout: _timeout,
    );
  }

  Future<void> waitForEmailContentError() async {
    final text = ValidationError.incorrectEmail;
    await driver.waitFor(
      find.text(text),
      timeout: _timeout,
    );
  }
}
