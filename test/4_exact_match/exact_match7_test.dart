import 'package:test/test.dart';

/// Совпадение с любым словом, начинающимся на X

void main() {
  const String pattern = r'\bcap';

  group('Has match', () {
    test('Test 1', () {
      /// Будет обнаружено `cap`, `capitan`, не `recap`.
      final bool actual = RegExp(pattern).hasMatch('The cap capitan recap');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('recap');
      expect(actual, false);
    });
  });
}
