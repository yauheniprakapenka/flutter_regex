import 'package:test/test.dart';

/// Карты Visa начинаются с цифры 4 и состоят из 13 или 16 цифр, не из 14 или 15.
/// Карта начинается на `4`
/// Затем идут 12 цифр `\d{12}`
/// Затем либо есть еще три цифры, либо нет `(\d{3})?`
void main() {
  const String pattern = r'^4\d{12}(\d{3})?$';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('4123456789012');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('41234567890123');
      expect(actual, false);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('412345678901234');
      expect(actual, false);
    });

    test('Test 4', () {
      final bool actual = RegExp(pattern).hasMatch('4123456789012345');
      expect(actual, true);
    });

    test('Test 5', () {
      final bool actual = RegExp(pattern).hasMatch('41234567890123456');
      expect(actual, false);
    });
  });
}
