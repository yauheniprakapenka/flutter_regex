import 'package:test/test.dart';

void main() {
  const String pattern = '.a..';

  group('Match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('sales');
      final bool actual2 = RegExp(pattern).hasMatch('apac1');
      final bool actual3 = RegExp(pattern).hasMatch('.a..');
      expect(actual1, true);
      expect(actual2, true);
      expect(actual3, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual4 = RegExp(pattern).hasMatch('aas');
      final bool actual5 = RegExp(pattern).hasMatch('abcd');
      expect(actual4, false);
      expect(actual5, false);
    });
  });
}
