part of '../app_test.dart';

void runRegisterFormTests() {
  group('Register form tests', () {
    late FlutterDriver driver;

    setUpAll(() async {
      driver = await FlutterDriver.connect();
    });

    tearDownAll(() async {
      await driver.close();
    });

    test('Cannot register with all empty fields', () async {
      // Precondition
      await driver.requestData(DriverCommands.restart);
      final loginPage = LoginPageObject(driver: driver);
      final registerPage = RegisterPageObject(driver: driver);

      // When
      await loginPage.tapRegisterButton();
      expect(await loginPage.findTitleText(), 'Регистрация');
      await registerPage.tapRegisterButton();

      // Then
      await registerPage.findEmptyPasswordValidationError();
      await registerPage.findEmptyEmailValidationError();
    });

    test('Successful registration', () async {
      // Precondition
      await driver.requestData(DriverCommands.restart);
      final loginPage = LoginPageObject(driver: driver);
      expect(await loginPage.findTitleText(), '111Вход');
      final registrationPage = RegisterPageObject(driver: driver);

      // When
      await loginPage.tapRegisterButton();
      expect(await registrationPage.findTitleText(), 'Регистрация');
      await registrationPage.tapOnPasswordField();
      await registrationPage.enterText(TestData.validPassword);
      await registrationPage.tapOnEmailField();
      await registrationPage.enterText(TestData.validEmail);
      await registrationPage.tapRegisterButton();

      // Then
      expect(
        await registrationPage.findSuccessText(),
        'Регистрация успешна',
      );
    });
  });
}
