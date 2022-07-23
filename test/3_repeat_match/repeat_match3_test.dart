import 'package:test/test.dart';

/// Метасимвол `?` обозначает совпадение с 0 или 1 символов. Равносилен `{0,1}`.
/// или набора символов. Полезен для обнаружения совпадений с одиночными дополнительными символами.
void main() {
  const String pattern = r'https?:\/\/[\w.\/]+';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('https://www.google.com/');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('http://www.google.com/');
      expect(actual, true);
    });
  });
}
