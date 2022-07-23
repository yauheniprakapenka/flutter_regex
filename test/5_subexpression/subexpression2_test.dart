import 'package:test/test.dart';

void main() {
  /// Шаблон `\d{1,3}\.` повторяется 3 раза, а значит может быть выражен
  /// как повторение
  /// 
  /// Для повышения удобочитаемости можно заключать выражения в круглые скобки.
  /// Такая практика допутима и не оказывают влияния на поведение выражения и
  /// производительность.
  const String longPattern = r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';
  const String shortPattern = r'(\d{1,3}\.){3}\d{1,3}';
  const String shortComfortablePattern = r'(\d{1,3}\.){3}(\d{1,3})';

  const String testData = '12.159.46.200';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(longPattern).hasMatch(testData);
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(shortPattern).hasMatch(testData);
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(shortComfortablePattern).hasMatch(testData);
      expect(actual, true);
    });
  });
}
