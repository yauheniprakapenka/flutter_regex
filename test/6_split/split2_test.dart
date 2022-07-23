import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Split', () {
    test('Test 1', () {
      const String pattern = r'\d';
      final RegExp regExp = RegExp(pattern);
      const String text = 'a1b2c3';
      final List<String> matcher = ['a', 'b', 'c', ''];

      final List<String> actual = text.split(regExp);

      expect(actual, matcher);
    });

    test('Test 3', () {
      const String pattern = 'cat';
      final RegExp regExp = RegExp(pattern);
      const String text = 'acatbcatc';
      final List<String> matcher = ['a', 'b', 'c'];

      final List<String> actual = text.split(regExp);

      expect(actual, matcher);
    });
  });
}
