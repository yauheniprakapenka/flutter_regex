// ignore_for_file: unused_local_variable

import 'package:test/test.dart';

/// `#` обычный символ.
/// `[0-9A-Fa-f]` диапазон, который повторяется шесть раз подряд.
/// `{6}` обозначает 6 совпадений.

void main() {
  const String longPattern = '#[0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f][0-9A-Fa-f]';
  const String shortPattern = '#[0-9A-Fa-f]{6}';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(shortPattern).hasMatch('#fefbdB');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(shortPattern).hasMatch('#0000ff');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Test 1', () {
      final bool actual = RegExp(shortPattern).hasMatch('0000ff');
      expect(actual, false);
    });

    test('Test 2', () {
      final bool actual = RegExp(shortPattern).hasMatch('#0000fz');
      expect(actual, false);
    });
  });
}
