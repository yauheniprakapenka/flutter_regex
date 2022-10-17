import 'package:test/test.dart';

void main() {
  const String pattern = r'[ns]a.\.xls';

  group('Has match', () {
    test('Test 1', () {
      final bool actual1 = RegExp(pattern).hasMatch('nat.xls');
      final bool actual2 = RegExp(pattern).hasMatch('sat.xls');
      expect(actual1, true);
      expect(actual2, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.xls');
      expect(actual, false);
    });
  });
}
