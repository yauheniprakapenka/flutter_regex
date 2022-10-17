import 'package:test/test.dart';

void main() {
  const String pattern = r'c[\W]t';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('cяt');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('cat');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('cAt');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('c5t');
      expect(actual, false);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('c_t');
      expect(actual, false);
    });
  });
}
