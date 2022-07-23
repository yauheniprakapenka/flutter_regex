import 'package:test/test.dart';

/// `{2,4}` обозначает минимум 2 совпадения, максимум 4.

void main() {
  const String pattern = r'\d{1,2}[-\/]\d{1,2}[-\/]\d{2,4}';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('4/8/17');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('10-6-2018');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('01-01-01');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('2/2/2');
      expect(actual, false);
    });
  });
}
