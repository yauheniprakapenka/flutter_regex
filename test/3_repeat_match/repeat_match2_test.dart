import 'package:test/test.dart';

/// Метасимвол `*` обозначает совпадение с 0 и более символов или набора символов.
/// Равносилен `{0,}`.
///
/// Можно рассматривать как нечто необязательное, опциональное.
void main() {
  const String pattern = r'\w+[\w.]*@[\w.]+\.\w+';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('a@a.com');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('a.@a.com');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('a.@a.com');
      expect(actual, true);
    });
  });
}
