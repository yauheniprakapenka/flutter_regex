import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/domain/utils/validators/email_validator.dart';

void main() {
  group('Позитивные', () {
    test('Email в нижнем регистре', () {
      final data = 'test@test.by';
      final result = validateEmail(data);
      expect(result, true);
    });

    test('Email в верхнем регистре', () {
      final data = 'TEST@TEST.BY';
      final result = validateEmail(data);
      expect(result, true);
    });

    test('Email с цифрами в имени аккаунта', () {
      final data = '1TE2ST3@TEST.BY';
      final result = validateEmail(data);
      expect(result, true);
    });

    test('Email с цифрами в доменной части', () {
      final data = 'TEST@1TE2ST3.BY';
      final result = validateEmail(data);
      expect(result, true);
    });
  });

  group('Негавтивные', () {
    test('Пустое поле email', () {
      final data = '';
      final result = validateEmail(data);
      expect(result, false);
    });

    test('Отсутствие @ в email ', () {
      final data = 'testtest.by';
      final result = validateEmail(data);
      expect(result, false);
    });
  });
}
