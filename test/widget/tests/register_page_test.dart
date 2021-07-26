part of '../widget_test.dart';

void runRegisterPageTests() {
  group('Register page tests', () {
    testWidgets('Cannot register with an empty email field', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(_buildRegisterMaterialApp());

      // Precondition
      expect(find.text('Регистрация'), findsOneWidget);
      final emailFieldKey = Key(RegisterPageKey.emailKey);
      final registerButtonKey = Key(RegisterPageKey.registerButtonKey);

      // When
      await tester.enterText(find.byKey(emailFieldKey), '');
      await tester.tap(find.byKey(registerButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Введите email'), findsOneWidget);
    });

    testWidgets('Cannot register with an empty password field', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(_buildRegisterMaterialApp());

      // Precondition
      expect(find.text('Регистрация'), findsOneWidget);
      final passwordFieldKey = Key(RegisterPageKey.passwordKey);
      final registerButtonKey = Key(RegisterPageKey.registerButtonKey);

      // When
      await tester.enterText(find.byKey(passwordFieldKey), '');
      await tester.tap(find.byKey(registerButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Введите пароль'), findsOneWidget);
    });

    testWidgets('Success registration', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(_buildRegisterMaterialApp());

      // Precondition
      expect(find.text('Регистрация'), findsOneWidget);
      final emailFieldKey = Key(RegisterPageKey.emailKey);
      final passwordFieldKey = Key(RegisterPageKey.passwordKey);
      final registerButtonKey = Key(RegisterPageKey.registerButtonKey);

      // When
      await tester.enterText(
        find.byKey(passwordFieldKey),
        TestData.validPassword,
      );

      await tester.enterText(
        find.byKey(emailFieldKey),
        TestData.validEmail,
      );

      await tester.tap(find.byKey(registerButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Регистрация успешна'), findsOneWidget);
    });
  });
}

MaterialApp _buildRegisterMaterialApp() {
  return MaterialApp(home: RegisterPage());
}
