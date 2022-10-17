import 'package:test/test.dart';

void main() {
  const String pattern = r'[ns]a[\D]\.xls';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('saz.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sa5.xls');
      expect(actual, false);
    });
  });
}
