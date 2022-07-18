import 'package:test/test.dart';

/// `|` обозначает логичекую операцию ИЛИ.

void main() {
  const String pattern1 = r'(\d{1,2})';
  const String pattern2 = r'(1\d{1,2})';
  const String pattern3 = r'(2[0-4]\d)';

  group('Has match', () {
    test('Pattern 1 ex1', () {
      final bool actual = RegExp(pattern1).hasMatch('0');
      expect(actual, true);
    });

    test('Pattern 1 ex2', () {
      final bool actual = RegExp(pattern1).hasMatch('99');
      expect(actual, true);
    });

    test('Pattern 2 ex1', () {
      final bool actual = RegExp(pattern2).hasMatch('100');
      expect(actual, true);
    });

    test('Pattern 2 ex2', () {
      final bool actual = RegExp(pattern2).hasMatch('199');
      expect(actual, true);
    });

    test('Pattern 3 ex1', () {
      final bool actual = RegExp(pattern3).hasMatch('200');
      expect(actual, true);
    });

    test('Pattern 3 ex2', () {
      final bool actual = RegExp(pattern3).hasMatch('249');
      expect(actual, true);
    });
  });
}
