import 'package:test/test.dart';

/// Проверить начало.
///
/// Метасимвол `^` обозначает совпадение с началом символьной строки.
///
/// Шаблон `^\s*` обеспечивает совпадение с началом строки, после которой следует
/// от нуля и больше пробельных символов. Следовательно, допустимы знаки пробела, табуляции, разрыва.

void main() {
  const String pattern = r'^\s*<\?xml.*\?>';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('<?xml version="1.0 encoding="UTF-8" ?>');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch(' <?xml version="1.0 encoding="UTF-8" ?>');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(pattern).hasMatch('''

<?xml version="1.0 encoding="UTF-8" ?>
''');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('''
1
<?xml version="1.0 encoding="UTF-8" ?>
''');
      expect(actual, false);
    });
  });
}
