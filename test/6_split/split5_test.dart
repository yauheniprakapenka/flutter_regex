import 'package:test/expect.dart';
import 'package:test/scaffolding.dart';

void main() {
  group('Tag', () {
    test('Test 1', () {
      const String pattern = '(?=<em>.*?)|(?<=</em>)';
      final RegExp regExp = RegExp(pattern);
      const String text = 'a<em>b</em>c<em>d</em>e';
      final List<String> matcher = ['a', '<em>b</em>', 'c', '<em>d</em>', 'e'];

      final List<String> actual = text.split(regExp);

      expect(actual, matcher);
    });
  });
}
