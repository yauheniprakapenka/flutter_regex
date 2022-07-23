import 'package:test/test.dart';

/// Знак `@` экранировать не нужно.
void main() {
  const String pattern = r'\w\d\w\d\w\d';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('A1C3E3');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('12345 ');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('12345');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('abcdef');
      expect(actual, false);
    });
  });
}
