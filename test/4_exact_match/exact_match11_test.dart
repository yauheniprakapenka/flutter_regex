import 'package:test/test.dart';

/// Проверить начало.
///
/// Метасимвол `^` обозначает совпадение с началом символьной строки.
///
/// Относится к числу тех метасимволов, которые имеют не одно назначение.
///
/// Обозначает отрицание набора символов только в том случае, если в наборе, заключенном в
/// квадратные скобки `[` и `]`, он указан первым после открывающейся скобки.
///
/// Если указан за пределами набора символов и в начале шаблона, то означает совпадение с началом
/// символьной строки.
///
/// Шаблон `^\s*` обеспечивает совпадение с началом строки, после которой следует
/// от нуля и больше пробельных символов. Следовательно, допустимы знаки пробела, табуляции, разрыва.

void main() {
  const String pattern = r'^\s*<\?xml.*\?>';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('<?xml version="1.0 encoding="UTF-8" ?>');
      expect(actual, true);
    });

    test('Tes 2', () {
      final bool actual = RegExp(pattern).hasMatch(' <?xml version="1.0 encoding="UTF-8" ?>');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('''

<?xml version="1.0 encoding="UTF-8" ?>
''');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('''
1
<?xml version="1.0 encoding="UTF-8" ?>
''');
      expect(actual, false);
    });
  });
}
