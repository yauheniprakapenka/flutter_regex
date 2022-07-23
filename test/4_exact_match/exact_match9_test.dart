import 'package:test/test.dart';

/// `\B-\B` обеспечивает совпадение с дефисом, окруженным знаками разрыва.

void main() {
  const String pattern = r'\B-\B';

  group('Has match', () {
    test('Test 1', () {
      /// Будет обнаружено `cap`, `recap`, не `capitan`.
      final bool actual = RegExp(pattern).hasMatch('color - coded');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('color-coded');
      expect(actual, false);
    });
  });
}
