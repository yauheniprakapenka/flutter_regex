import 'package:test/test.dart';

void main() {
  const String pattern = r'<\?xml.*\?>';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('<?xml version="1.0 encoding="UTF-8" ?>');
      expect(actual, true);
    });
  });
}
