import 'package:test/test.dart';

void main() {
  const String pattern = r'^[0-9]+\.?[0-9]*?$';

  group('Match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('0');
      final bool actual2 = RegExp(pattern).hasMatch('1');
      final bool actual3 = RegExp(pattern).hasMatch('9');
      final bool actual4 = RegExp(pattern).hasMatch('777');
      final bool actual5 = RegExp(pattern).hasMatch('0.1');
      final bool actual6 = RegExp(pattern).hasMatch('10.01');
      final bool actual7 = RegExp(pattern).hasMatch('000.111');
      final bool actual8 = RegExp(pattern).hasMatch('0.0123456789');
      final bool actual9 = RegExp(pattern).hasMatch('1.');
      expect(actual1, true);
      expect(actual2, true);
      expect(actual3, true);
      expect(actual4, true);
      expect(actual5, true);
      expect(actual6, true);
      expect(actual7, true);
      expect(actual8, true);
      expect(actual9, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('.1');
      final bool actual2 = RegExp(pattern).hasMatch('00..');
      final bool actual3 = RegExp(pattern).hasMatch('..00');
      final bool actual4 = RegExp(pattern).hasMatch('1..0');
      final bool actual5 = RegExp(pattern).hasMatch('!');
      final bool actual6 = RegExp(pattern).hasMatch('=');
      final bool actual7 = RegExp(pattern).hasMatch('+');
      final bool actual8 = RegExp(pattern).hasMatch(r'$');
      final bool actual9 = RegExp(pattern).hasMatch('.');
      expect(actual1, false);
      expect(actual2, false);
      expect(actual3, false);
      expect(actual4, false);
      expect(actual5, false);
      expect(actual6, false);
      expect(actual7, false);
      expect(actual8, false);
      expect(actual9, false);
    });
  });
}
