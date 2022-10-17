import 'package:test/test.dart';

void main() {
  const String pattern = 'sales.';

  group('Match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('sales1.xls');
      final bool actual2 = RegExp(pattern).hasMatch('sales2');
      final bool actual3 = RegExp(pattern).hasMatch('sales ');
      expect(actual1, true);
      expect(actual2, true);
      expect(actual3, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('ordersЗ.xls');
      final bool actual2 = RegExp(pattern).hasMatch('apacl.xls ');
      final bool actual3 = RegExp(pattern).hasMatch('sales');
      final bool actual4 = RegExp(pattern).hasMatch('Sales1');
      expect(actual1, false);
      expect(actual2, false);
      expect(actual3, false);
      expect(actual4, false);
    });
  });
}
