import 'package:test/test.dart';

/// Ленивые кванторы.
///
/// Жадный  |  Ленивый
///  `*`    |    `*?`
///  `+`    |    `+?`
/// `{n,}`  |   `{n,}?`

void main() {
  const String pattern = r'<[Bb].*?<\/[Bb]>';

  group('Has match', () {
    test('Test 1', () {
      /// Будет обнаружено сначало первое совпадение `<b>RR</b>`, затем второе `<b>FF</b>`.
      final bool actual = RegExp(pattern).hasMatch('<b>RR</b> and <b>FF</b>');
      expect(actual, true);
    });
  });
}
