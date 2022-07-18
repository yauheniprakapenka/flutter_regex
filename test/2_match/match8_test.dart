import 'package:test/test.dart';

/// Метасимвол `\d` обозначает совпадение с 1 или несколькими цифрами. Равносильно [0-9].
///
void main() {
  const String pattern = r'[ns]a[\d]\.xls';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('sa1.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('saz.xls');
      expect(actual, false);
    });
  });
}
