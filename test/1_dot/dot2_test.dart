import 'package:test/test.dart';

void main() {
  const String pattern = '.a.';

  group('Match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('sales1.xls');
      final bool actual2 = RegExp(pattern).hasMatch('apac1');
      final bool actual3 = RegExp(pattern).hasMatch('.a.');
      final bool actual4 = RegExp(pattern).hasMatch('aas');
      expect(actual1, true);
      expect(actual2, true);
      expect(actual3, true);
      expect(actual4, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('ordersЗ.xls');
      final bool actual2 = RegExp(pattern).hasMatch('europe');
      final bool actual3 = RegExp(pattern).hasMatch('cAt');
      final bool actual4 = RegExp(pattern).hasMatch('na');
      final bool actual5 = RegExp(pattern).hasMatch('an');
      final bool actual6 = RegExp(pattern).hasMatch('ann');
      final bool actual7 = RegExp(pattern).hasMatch('as');
      expect(actual1, false);
      expect(actual2, false);
      expect(actual3, false);
      expect(actual4, false);
      expect(actual5, false);
      expect(actual6, false);
      expect(actual7, false);
    });
  });
}
