import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Look ahead negative', () {
    test('Test 1', () {
      const String pattern = 'aaa(?!bbb)';
      final RegExp regExp = RegExp(pattern);
      const String text = 'zzzaaabbbaaapppaaabbbaaaccc';
      final List<String> matcher = ['zzzaaabbb', 'pppaaabbb', 'ccc'];

      final List<String> actual = text.split(regExp);

      expect(actual, matcher);
    });
  });
}
