import 'package:test/test.dart';

/// `|` обозначает логичекую операцию ИЛИ.

void main() {
  const String pattern = r'(19|20|21)\d{2}';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('1926');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('2026');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('2139');
      expect(actual, true);
    });
  });
}
