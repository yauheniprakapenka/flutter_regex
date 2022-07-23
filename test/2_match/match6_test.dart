import 'package:test/test.dart';

/// Метасимвол `^` используется для отрицания всех символов или диапазона из набора символов.
/// `[^0-9]` равносилен `\D`
void main() {
  const String pattern = r'[ns]a[^0-9]\.xls';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('saz.xls');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('sa#.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sa1.xls');
      expect(actual, false);
    });
  });
}
