import 'package:test/test.dart';

/// Пример с включением точного расширения.
void main() {
  const String pattern = r'.a.\.xls';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.doc');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('cat1.doc');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('cat..doc');
      expect(actual, false);
    });
  });
}
