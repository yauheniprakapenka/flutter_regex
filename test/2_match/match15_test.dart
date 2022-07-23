import 'package:test/test.dart';

/// Номера карт Diners Club состоят из 14 цифр, начинаются с 300-305, 36 или 38.
/// Если номер начинается с 300-305, то требуется еще 11 цифр. `30[0-5]`
/// Если начинается с 36 или 38, то требудется еще 12 цифр. `36\d` или `38\d`
void main() {
  const String pattern = r'^(30[0-5]|36\d|38\d)\d{11}$';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('30112345678901');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('36012345678901');
      expect(actual, true);
    });

    test('Test 3', () {
      final bool actual = RegExp(pattern).hasMatch('38912345678901');
      expect(actual, true);
    });
  });
}
