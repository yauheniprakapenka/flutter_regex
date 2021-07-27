part of '../app_test.dart';

void runLoginFormTests() {
  group('Login form tests', () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      await driver.close();
    });

    test('Cannot log in with an empty phone field', () async {
      // Precondition
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), 'Вход');

      // When
      await loginPage.tapOnEmailField();
      await loginPage.enterText(TestData.validEmail);
      await loginPage.tapOnPhoneField();
      await loginPage.enterText('');
      await loginPage.tapLoginButton();

      // Then
      await loginPage.waitForEmailEmptyPhone();
      expect(await loginPage.findTitleText(), 'Вход');
    });

    test('Phone field has only digits', () async {
      // Precondition
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), 'Вход');

      // When
      await loginPage.tapOnEmailField();
      await loginPage.enterText(TestData.validEmail);
      await loginPage.tapOnPhoneField();
      await loginPage.enterText(TestData.valuesRange);
      final text = await loginPage.getTextFromPhoneField();
      final _isPhoneHasOnlyDigits = validateDigits(text);

      // Then
      expect(_isPhoneHasOnlyDigits, true);
    });

    test('Cannot log in with an empty email field', () async {
      // Precondition
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), 'Вход');

      // When
      await loginPage.tapOnEmailField();
      await loginPage.enterText('');
      await loginPage.tapOnPhoneField();
      await loginPage.enterText(TestData.validPhone);
      await loginPage.tapLoginButton();

      // Then
      await loginPage.waitForEmailEmptyError();
      expect(await loginPage.findTitleText(), 'Вход');
    });

    test('Cannot log in with invalid email', () async {
      // Precondition
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), 'Вход');

      // When
      await loginPage.tapOnEmailField();
      await loginPage.enterText(TestData.invalidEmail);
      await loginPage.tapOnPhoneField();
      await loginPage.enterText(TestData.validPhone);
      await loginPage.tapLoginButton();

      // Then
      await loginPage.waitForEmailContentError();
      expect(await loginPage.findTitleText(), 'Вход');
    });

    test('Successful login', () async {
      // Precondition
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), 'Вход');

      // When
      await loginPage.tapOnEmailField();
      await loginPage.enterText(TestData.validEmail);
      await loginPage.tapOnPhoneField();
      await loginPage.enterText(TestData.validPhone);
      await loginPage.tapLoginButton();

      // Then
      await loginPage.waitSuccessText();
    });
  });
}
