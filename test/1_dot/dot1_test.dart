import 'package:test/test.dart';

/// Точка обозначает совпадение с любым одиночным символом (цифра, буква, точка).
void main() {
  const String pattern = 'sales.';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('sales1.xls');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('sales2');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('sales ');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('ordersЗ.xls');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('apacl.xls ');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('sales');
      expect(actual, false);
    });

    test('Ex4', () {
      final bool actual = RegExp(pattern).hasMatch('Sales1');
      expect(actual, false);
    });
  });
}
