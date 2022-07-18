import 'package:test/test.dart';

/// Пример с включением точного расширения.
void main() {
  const String pattern = r'.a.\.xls';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.doc');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('cat1.doc');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('cat..doc');
      expect(actual, false);
    });
  });
}
