import 'package:test/test.dart';

void main() {
  const String pattern1 =
      r'(((\d{1,2})|(1\d{2})|(2[0-4]\d)|(25[0-5]))\.){3}(((\d{1,2})|(1\d{2})|(2[0-4]\d)|(25[0-5])))';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern1).hasMatch('12.159.46.200');
      expect(actual, true);
    });
  });
}
