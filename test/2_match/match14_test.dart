import 'package:test/test.dart';

/// Номера карт American Express состоят из 15 цирф и начинваются с 34 или 37.
void main() {
  const String pattern = r'^3[47]\d{13}$';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('371234567890123');
      expect(actual, true);
    });
  });
}
