import 'package:test/test.dart';

/// Совпадение с любым словом, начинающимся на

void main() {
  const String pattern = r'\bcap';

  group('Has match', () {
    test('Ex1', () {
      /// Будет обнаружено `cap`, `capitan`, не `recap`.
      final bool actual = RegExp(pattern).hasMatch('The cap capitan recap');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('recap');
      expect(actual, false);
    });
  });
}
