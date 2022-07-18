import 'package:test/test.dart';

/// Совпадение с не буквенно-цифровыми символами.
///
/// `\W` - люой не буквенно-цифровой символ и знак подчеркивания. Равносильно `[^a-zA-Z0-9_]`.
void main() {
  const String pattern = r'c[\W]t';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('cяt');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('cat');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('cAt');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('c5t');
      expect(actual, false);
    });

    test('Ex4', () {
      final bool actual = RegExp(pattern).hasMatch('c_t');
      expect(actual, false);
    });
  });
}
