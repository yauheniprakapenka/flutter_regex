import 'package:test/test.dart';

/// Совпадение с буквенно-цифровыми символами.
///
/// `\w` - люой буквенно-цифровой символ и знак подчеркивания. Равносильно `[a-zA-Z0-9_]`.
void main() {
  const String pattern = r'c[\w]t';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('cat');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('cAt');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('c5t');
      expect(actual, true);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('c_t');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sяt');
      expect(actual, false);
    });
  });
}
