import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_testing/presentation/core/constants/keys/register_page.dart';
import 'package:flutter_testing/presentation/core/constants/strings/validation_error.dart';
import '../../config/test_config.dart';

class RegisterPageObject {
  FlutterDriver driver;

  final _timeout = TestConfig.timeout;

  RegisterPageObject({
    required this.driver,
  });

  // Find Keys

  final titleKey = find.byValueKey(RegisterPageKey.titleTextKey);
  final emailKey = find.byValueKey(RegisterPageKey.emailKey);
  final passwordKey = find.byValueKey(RegisterPageKey.passwordKey);
  final registerButtonKey = find.byValueKey(RegisterPageKey.registerButtonKey);
  final successRegistrationKey =
      find.byValueKey(RegisterPageKey.successRegistrationKey);

  // Tap

  Future<void> tapOnEmailField() async {
    await driver.tap(
      emailKey,
      timeout: _timeout,
    );
  }

  Future<void> tapOnPasswordField() async {
    await driver.tap(
      passwordKey,
      timeout: _timeout,
    );
  }

  Future<void> tapRegisterButton() async {
    await driver.tap(
      registerButtonKey,
      timeout: _timeout,
    );
  }

  // Enter

  Future<void> enterText(String value) async {
    await driver.enterText(
      value,
      timeout: _timeout,
    );
  }

  // Find

  Future<String> findTitleText() async {
    return await driver.getText(
      titleKey,
      timeout: _timeout,
    );
  }

  Future<String> findSuccessText() async {
    return await driver.getText(
      successRegistrationKey,
      timeout: _timeout,
    );
  }

  Future<String> findEmptyPasswordValidationError() async {
    final text = ValidationError.enterPassword;
    return await driver.getText(
      find.text(text),
      timeout: _timeout,
    );
  }

  Future<String> findEmptyEmailValidationError() async {
    final text = ValidationError.enterEmail;
    return await driver.getText(
      find.text(text),
      timeout: _timeout,
    );
  }
}
