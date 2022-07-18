import 'package:test/test.dart';

/// Метасимвол `^` обозначает начало строки.
///
/// Относится к числу тех метасимволов, которые имеют не одно назначение.
///
/// Обозначает отрицание набора символов только в том случае, если в наборе, заключенном в
/// квадратные скобки `[` и `]`, он указан первым после открывающейся скобки.
///
/// Если указан за пределами набора символов и в начале шаблона, то означает совпадение с началом
/// символьной строки.

void main() {
  const String pattern = r'\B-\B';

  group('Has match', () {
    test('Ex1', () {
      /// Будет обнаружено `cap`, `recap`, не `capitan`.
      final bool actual = RegExp(pattern).hasMatch('color - coded');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('color-coded');
      expect(actual, false);
    });
  });
}
