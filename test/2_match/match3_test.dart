import 'package:test/test.dart';

void main() {
  const String pattern = r'[ns]a[012345]\.xls';

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('sa1.xls');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('na1.xls');
      expect(actual, true);
    });
  });

  group('Has not match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('sam.xls');
      expect(actual, false);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('na6.xls');
      expect(actual, false);
    });
  });
}
