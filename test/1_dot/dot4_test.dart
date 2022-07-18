import 'package:test/test.dart';

/// `\.` - Экранирование точки, чтобы использовать точку как символ, а не как
/// специальное назначение.
///
/// Дополнительно нужно экранировать и сам экран `\\`.
void main() {
  const String pattern = r'.a.\.';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('na1.xls');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('sal..xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('sale');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('ale.');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('aaaaa');
      expect(actual, false);
    });
  });
}
