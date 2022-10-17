import 'package:test/test.dart';

void main() {
  const String pattern = r'.a.\.';

  group('Match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('na1.xls');
      final bool actual2 = RegExp(pattern).hasMatch('sal..xls');
      expect(actual1, true);
      expect(actual2, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual3 = RegExp(pattern).hasMatch('sale');
      final bool actual4 = RegExp(pattern).hasMatch('ale.');
      final bool actual5 = RegExp(pattern).hasMatch('aaaaa');
      expect(actual3, false);
      expect(actual4, false);
      expect(actual5, false);
    });
  });
}
