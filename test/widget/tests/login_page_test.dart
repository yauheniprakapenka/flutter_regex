part of '../widget_test.dart';

void runLoginFormTests() {
  group('Login page tests', () {
    testWidgets('Cannot log in with an empty phone field', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginPage(),
        ),
      );

      // Precondition
      expect(find.text('Вход'), findsOneWidget);
      final emailFieldKey = Key(LoginPageKeys.emailKey);
      final phoneFieldKey = Key(LoginPageKeys.phoneKey);
      final login = Key(LoginPageKeys.loginButtonKey);

      // When
      await tester.enterText(find.byKey(emailFieldKey), TestData.validEmail);
      await tester.enterText(find.byKey(phoneFieldKey), '');
      await tester.tap(find.byKey(login));
      await tester.pump();

      // Then
      expect(find.text('Введите телефон'), findsOneWidget);
    });

    testWidgets('Phone field has only digits', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginPage(),
        ),
      );

      // Precondition
      expect(find.text('Вход'), findsOneWidget);
      final phoneFieldKey = Key(LoginPageKeys.phoneKey);

      // When
      await tester.enterText(find.byKey(phoneFieldKey), TestData.valuesRange);
      await tester.pump();

      // Then
      expect(find.text('09'), findsOneWidget);
    });

    testWidgets('Cannot log in with an empty email field', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginPage(),
        ),
      );

      // Precondition
      expect(find.text('Вход'), findsOneWidget);
      final emailFieldKey = Key(LoginPageKeys.emailKey);
      final phoneFieldKey = Key(LoginPageKeys.phoneKey);
      final sendButtonKey = Key(LoginPageKeys.loginButtonKey);

      // When
      await tester.enterText(find.byKey(emailFieldKey), '');
      await tester.enterText(find.byKey(phoneFieldKey), TestData.validPhone);
      await tester.tap(find.byKey(sendButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Введите email'), findsOneWidget);
    });

    testWidgets('Cannot log in with invalid email', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginPage(),
        ),
      );

      // Precondition
      expect(find.text('Вход'), findsOneWidget);
      final emailFieldKey = Key(LoginPageKeys.emailKey);
      final phoneFieldKey = Key(LoginPageKeys.phoneKey);
      final loginButtonKey = Key(LoginPageKeys.loginButtonKey);

      // When
      await tester.enterText(find.byKey(emailFieldKey), TestData.invalidEmail);
      await tester.enterText(find.byKey(phoneFieldKey), TestData.validPhone);
      await tester.tap(find.byKey(loginButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Неверно указан email'), findsOneWidget);
    });

    testWidgets('Successful login', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: LoginPage(),
        ),
      );

      // Precondition
      expect(find.text('Вход'), findsOneWidget);
      final emailFieldKey = Key(LoginPageKeys.emailKey);
      final phoneFieldKey = Key(LoginPageKeys.phoneKey);
      final loginButtonKey = Key(LoginPageKeys.loginButtonKey);

      // When
      await tester.enterText(find.byKey(emailFieldKey), TestData.validEmail);
      await tester.enterText(find.byKey(phoneFieldKey), TestData.validPhone);
      await tester.tap(find.byKey(loginButtonKey));
      await tester.pump();

      // Then
      expect(find.text('Авторизация успешна'), findsOneWidget);
    });
  });
}
