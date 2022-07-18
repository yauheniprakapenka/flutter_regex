import 'package:test/test.dart';

void main() {
  const String pattern = r'\d{1,3}\.\d{1,3}\.\d{1,3}\.\d{1,3}';

  /// Шаблон `\d{1,3}\.` повторяется 3 раза, а значит может быть выражен
  /// как повторение
  const shorterPattern = r'(\d{1,3}\.){3}\d{1,3}';

  /// Для повышения удобочитаемости можно заключать выражения в круглые скобки.
  /// Такая практика допутима и не оказывают влияния на поведение выражения и
  /// производительность.
  const shorterUsabilityPattern = r'(\d{1,3}\.){3}(\d{1,3})';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('12.159.46.200');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(shorterPattern).hasMatch('12.159.46.200');
      expect(actual, true);
    });

    test('Ex3', () {
      final bool actual = RegExp(shorterUsabilityPattern).hasMatch('12.159.46.200');
      expect(actual, true);
    });
  });
}
