import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Look ahead positive', () {
    test('Test 1', () {
      const String pattern = 'aaa(?=bbb)';
      final RegExp regExp = RegExp(pattern);
      const String text = 'zzzaaabbbaaapppaaabbb';
      final List<String> matcher = ['zzz', 'bbbaaappp', 'bbb'];

      final List<String> actual = text.split(regExp);

      expect(actual, matcher);
    });
  });
}
