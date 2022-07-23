import 'package:test/test.dart';

/// Метасимвол `$`, что после него ничего не следует. Совпадение с концом строки.
///
/// `\s*$` обеспечивает совпадение с любыми пробельными символами, которые могут следовать
/// до конца строки.

void main() {
  const String pattern = r'</[Hh][Tt][Mm][Ll]>\s*$';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('</html>');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('</html> ');
      expect(actual, true);
    });

    group('Has not match', () {
      test('Test 1', () {
        final bool actual = RegExp(pattern).hasMatch('</html>1');
        expect(actual, false);
      });
    });
  });
}
