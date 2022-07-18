import 'package:test/test.dart';

/// `{2,4}` обозначает минимум 2 совпадения, максимум 4.

void main() {
  const String pattern = '#[0-9A-Fa-f]{6}';

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
