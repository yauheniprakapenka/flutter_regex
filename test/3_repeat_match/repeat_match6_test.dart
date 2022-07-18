import 'package:test/test.dart';

void main() {
  const String pattern = r'<[Hh]1>.*<\/[hH]1>';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('<H1>Welcome</H1>');
      expect(actual, true);
    });
  });
}
