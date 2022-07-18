import 'package:test/test.dart';

/// Знак `@` экранировать не нужно.
void main() {
  const String pattern = r'\w\d\w\d\w\d';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('A1C3E3');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('12345 ');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('12345');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('abcdef');
      expect(actual, false);
    });
  });
}
