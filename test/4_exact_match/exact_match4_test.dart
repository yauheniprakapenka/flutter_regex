import 'package:test/test.dart';

/// `.*` обеспечивает совпадение с любыми символами.
///
/// Жадные метасимволы `*`, `{n,}` и `+`. Они обнаруживают максимально, а не минимально
/// возможное совпадение.

void main() {
  const String pattern = r'<[Bb].*<\/[Bb]>';

  group('Has match', () {
    test('Test 1', () {
      /// `.*` из-за жадности нахоит самый последниг тег. Таким образом, вместо
      /// `<b>RR</b>` он нашел `<b>RR</b> and <b>FF</b>`.
      final bool actual = RegExp(pattern).hasMatch('<b>RR</b> and <b>FF</b>');
      expect(actual, true);
    });
  });
}
