import 'package:test/test.dart';

/// Две точки для обнаружения совпадения с любыми двумя соседними символами.
void main() {
  const String pattern = '.a.';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sales1.xls');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('apac1');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('.a.');
      expect(actual, true);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('aas');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('ordersЗ.xls');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('europe');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('cAt');
      expect(actual, false);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('na');
      expect(actual, false);
    });

    test('Test 5', () {
      final bool actual = RegExp(pattern).hasMatch('an');
      expect(actual, false);
    });

    test('Test 6', () {
      final bool actual = RegExp(pattern).hasMatch('ann');
      expect(actual, false);
    });

    test('Test 7', () {
      final bool actual = RegExp(pattern).hasMatch('as');
      expect(actual, false);
    });
  });
}
