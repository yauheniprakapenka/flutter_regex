import 'package:test/test.dart';

/// `#` обычный символ.
/// `[0-9A-Fa-f]` диапазон, который повторяется шесть раз подряд.
void main() {
  /// Такой шаблон обеспечивает совпадение для `#d0f4e6`.
  const String pattern = '#[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('#fefbdB');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('#0000ff');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('0000ff');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('#0000fz');
      expect(actual, false);
    });
  });
}
