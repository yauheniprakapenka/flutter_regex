import 'package:test/test.dart';

/// Метасимволы `[` и `]` используются для обозначения диапазона символов, любой из которых
/// должен попасть. Можно указывать наборы символов полностью или пределы с помощью `-`.
/// Наборы символов можно отрицать, используя `^`, чтобы обеспечить совпадение с любым символом,
/// кроме указанных.
///
/// `[ns]` совпадение с `n` или `s`
/// `a` совпадение с `а`
/// `.` совпадение с `любым` символом
/// `xls` совпадение с `xls`
void main() {
  const String pattern = r'[ns]a.\.xls';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('nat.xls');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('sat.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('cat.xls');
      expect(actual, false);
    });
  });
}
