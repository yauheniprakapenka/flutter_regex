import 'package:test/test.dart';

/// Метасимвол `*` обозначает совпадение с 0 и более символов или набора символов.
/// Равносилен `{0,}`.
///
/// Можно рассматривать как нечто необязательное, опциональное.
void main() {
  const String pattern = r'\w+[\w.]*@[\w.]+\.\w+';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('a@a.com');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('a.@a.com');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('a.@a.com');
      expect(actual, true);
    });
  });
}
