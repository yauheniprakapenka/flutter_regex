import 'package:test/test.dart';

/// Определение границ слова
///
/// Метасимвол `\b` служит для обозначения совпадения с началом и концом слова.

void main() {
  const String pattern = r'\bcat\b';

  group('Has match', () {
    test('Ex1', () {
      /// Будет обнаружено `cat`, не `scattered`.
      final bool actual = RegExp(pattern).hasMatch('The cat scattered this food');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('acat');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('cata');
      expect(actual, false);
    });
  });
}
