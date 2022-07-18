import 'package:test/test.dart';

/// `{,4}` обозначает минимум 2 совпадения, максимум 4.

void main() {
  const String pattern = r'\d+: \$\d{3,}';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch(r'1234: $434.85');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch(r'123: $7.85');
      expect(actual, false);
    });
  });
}
