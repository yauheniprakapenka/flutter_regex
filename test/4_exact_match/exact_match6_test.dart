import 'package:test/test.dart';

/// Определение границ слова.
///
/// Метасимвол `\b` служит для обозначения совпадения с началом и концом слова.

void main() {
  const String pattern = r'\bcat\b';

  group('Has match', () {
    test('Test 1', () {
      /// Будет обнаружено `cat`, не `scattered`.
      final bool actual = RegExp(pattern).hasMatch('The cat scattered this food');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('acat');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('cata');
      expect(actual, false);
    });
  });
}
