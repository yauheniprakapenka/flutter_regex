// ignore_for_file: unused_local_variable, use_raw_strings

import 'package:test/test.dart';

/// Чтобы использовать `.`, как обычный символ вместо метасимвола, нужно его экранировать `\.`.
/// Причем нужно еще экранировать и сам `\`. В результате получаем `\\.`.
///
/// Экранирование `\\.`.
const String pattern1 = '[ns]a.\\.xls';

/// Равносильно
const String pattern2 = r'[ns]a.\.xls';

/// Метасимволами называются такие символы, которые имюет специальное назначение в регулярных
/// выражениях. В таком случае, специальное значение метасимвола игнорируется.
///
/// Метасимвол `.` обозначает совпадение с любым с любым одиночным символом.
/// Метасимвол `[` обозначает начало набора символов.

/// Метасимволы можно экранировать с помощью обратной косой чертой и тогда обеспечивается
/// совпадение с самим символом.
///
/// `\.` совпадает со знаком точки.
/// `\[` совпадает со знаком открывающейся квадратной скобки.
///

void main() {
  const String pattern = r'array\[[0-9]\]';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('array[1]');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('array[1');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('array[x]');
      expect(actual, false);
    });
  });
}
