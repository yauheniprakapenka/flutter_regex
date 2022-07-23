import 'package:test/test.dart';

void main() {
  const String pattern1 = r'(\d{1,2})';
  const String pattern2 = r'(1\d{1,2})';
  const String pattern3 = r'(2[0-4]\d)';

  group('Has match', () {
    test('Pattern 1 - Test 1', () {
      final bool actual = RegExp(pattern1).hasMatch('0');
      expect(actual, true);
    });

    test('Pattern 1 - Test 2', () {
      final bool actual = RegExp(pattern1).hasMatch('99');
      expect(actual, true);
    });

    test('Pattern 2 - Test 1', () {
      final bool actual = RegExp(pattern2).hasMatch('100');
      expect(actual, true);
    });

    test('Pattern 2 - Test 2', () {
      final bool actual = RegExp(pattern2).hasMatch('199');
      expect(actual, true);
    });

    test('Pattern 3 - Test 1', () {
      final bool actual = RegExp(pattern3).hasMatch('200');
      expect(actual, true);
    });

    test('Pattern 3 - Test 2', () {
      final bool actual = RegExp(pattern3).hasMatch('249');
      expect(actual, true);
    });
  });
}
