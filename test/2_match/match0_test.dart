import 'package:test/test.dart';

void main() {
  const String pattern = r'array\[[0-9]\]';

  group('Match tests', () {
    test('Tests', () {
      final bool actual = RegExp(pattern).hasMatch('array[1]');
      expect(actual, true);
    });
  });

  group('Not match tests', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('array[1');
      final bool actual2 = RegExp(pattern).hasMatch('array[x]');
      expect(actual1, false);
      expect(actual2, false);
    });
  });
}
