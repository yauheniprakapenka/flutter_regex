import 'package:test/test.dart';

/// Метасимвол `-` обозначает диапазон между `[` и `]`.
/// За пределами `[` и `]` употребляется как знак дефиса и можно не экранировать.
///
/// `[0-9]` равносилен `[0123456789]` равносилен `\d`
/// `[A-Z]` равносилен прописным буквам от `A` до `Z`
/// `[A-F]` равносилен прописным буквам от `A` до `F`
/// `[a-z]` равносилен строчным буквам от `a` до `z`
/// `[A-z]` совпадением со всеми символами ASCII от `A` до `z`. Он не вполне пригоден,
/// потому что включает в себя символы `[` и `^`, которые находятся в промежутке между буквами `Z` и `a`.
/// На практике диапазоны составляются из некоторых или всех цифр и некоторых или всех букв.
/// `[3-1]` непригоден.
/// `[A-Za-z0-9]` равносилен `[AВCDEFGHIJKLМNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz01234567890]`.
void main() {
  const String pattern = r'[ns]a[0-5]\.xls';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sa1.xls');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('na1.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('sam.xls');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('na6.xls');
      expect(actual, false);
    });
  });
}
