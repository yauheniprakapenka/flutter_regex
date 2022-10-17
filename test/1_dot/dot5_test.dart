import 'package:test/test.dart';

void main() {
  const String pattern = r'.a.\.xls';

  group('Match', () {
    test('Tests', () {
      final bool actual = RegExp(pattern).hasMatch('cat.xls');
      expect(actual, true);
    });
  });

  group('Not match', () {
    test('Tests', () {
      final bool actual1 = RegExp(pattern).hasMatch('cat.zls');
      final bool actual2 = RegExp(pattern).hasMatch('cat1.doc');
      final bool actual3 = RegExp(pattern).hasMatch('cat..doc');
      expect(actual1, false);
      expect(actual2, false);
      expect(actual3, false);
    });
  });
}
