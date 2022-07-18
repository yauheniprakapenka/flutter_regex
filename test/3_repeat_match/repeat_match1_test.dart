import 'package:test/test.dart';

/// Метасимвол `+` обозначает совпадение с 1 и более символов. Равносилен `{1,}`.
///
/// Знак `@` экранировать не нужно.
/// `[0-9]+` одна или несколько цифр подряд.
///
/// Если знак `+` употребляется вместе с набором символов, он должен быть указан за пределами набора.
/// `[0-9]+` - правильно
/// `[0-9+]` - неправильно
/// Чтобы использовать `+` как знак, его нужно экранировать `\+`.
///
/// `[0-9+]` является допустимым, но он не обеспечивает совпадение с одной или несколькими цифрами.
/// Вместо этого он определяет набор символов от `0` до `9`, и знак `+`.
///
/// `\w` - люой буквенно-цифровой символ и знак подчеркивания. Равносильно `[a-zA-Z0-9_]`.
///
/// Метасимволы `.` и `+` в наборе считаются обычными символами, если используются в наборе [+.].
/// Тем не менее, экранировать их не повредит. [\w.] равновсилен [\w\.].
void main() {
  const String pattern = r'[\w.]+@[\w.]+\.\w+';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('a@a.a');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('bb@bb.bb');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('cc.cc@cc.cc.cc');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('@');
      expect(actual, false);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('a@a');
      expect(actual, false);
    });

    test('Ex4', () {
      final bool actual = RegExp(pattern).hasMatch('@a.a');
      expect(actual, false);
    });

    test('Ex5', () {
      final bool actual = RegExp(pattern).hasMatch('a.a@');
      expect(actual, false);
    });

    test('Ex6', () {
      final bool actual = RegExp(pattern).hasMatch('bb @bb.bb');
      expect(actual, false);
    });
  });
}
