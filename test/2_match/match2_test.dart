import 'package:test/test.dart';

void main() {
  const String pattern = '[Rr]eg[Ee]x';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('regex');
      expect(actual, true);
    });

    test('Test 2 ', () {
      final bool actual = RegExp(pattern).hasMatch('Regex');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('regEx');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('rege');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('REGEX');
      expect(actual, false);
    });
  });
}
