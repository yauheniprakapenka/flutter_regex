import 'package:test/test.dart';

/// Совпадение с любым словом, заканчивающимся на

void main() {
  const String pattern = r'cap\b';

  group('Has match', () {
    test('Ex1', () {
      /// Будет обнаружено `cap`, `recap`, не `capitan`.
      final bool actual = RegExp(pattern).hasMatch('The cap capitan recap');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('capitan');
      expect(actual, false);
    });
  });
}
