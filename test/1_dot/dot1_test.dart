import 'package:test/test.dart';

/// Точка обозначает совпадение с любым одиночным символом (цифра, буква, точка).
void main() {
  const String pattern = 'sales.';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sales1.xls');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('sales2');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('sales ');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('ordersЗ.xls');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('apacl.xls ');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('sales');
      expect(actual, false);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('Sales1');
      expect(actual, false);
    });
  });
}
