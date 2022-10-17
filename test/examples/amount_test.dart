import 'package:test/test.dart';

void main() {
  group('Amount pattern', () {
    final RegExp pattern = RegExp(r'^[0-9]+\.?[0-9]*?$');

    group('Matches', () {
      test('0', () {
        final bool actual = pattern.hasMatch('0');
        expect(actual, true);
      });

      test('1', () {
        final bool actual = pattern.hasMatch('1');
        expect(actual, true);
      });

      test('9', () {
        final bool actual = pattern.hasMatch('9');
        expect(actual, true);
      });

      test('777', () {
        final bool actual = pattern.hasMatch('777');
        expect(actual, true);
      });

      test('0.1', () {
        final bool actual = pattern.hasMatch('0.1');
        expect(actual, true);
      });

      test('10.01', () {
        final bool actual = pattern.hasMatch('10.01');
        expect(actual, true);
      });

      test('000.111', () {
        final bool actual = pattern.hasMatch('000.111');
        expect(actual, true);
      });

      test('0.0123456789', () {
        final bool actual = pattern.hasMatch('0.0123456789');
        expect(actual, true);
      });

      test('1.', () {
        final bool actual = pattern.hasMatch('1.');
        expect(actual, true);
      });
    });

    group('Not matches', () {
      test('.1', () {
        final bool actual = pattern.hasMatch('.1');
        expect(actual, false);
      });

      test('00..', () {
        final bool actual = pattern.hasMatch('00..');
        expect(actual, false);
      });

      test('..00', () {
        final bool actual = pattern.hasMatch('..00');
        expect(actual, false);
      });

      test('1..0', () {
        final bool actual = pattern.hasMatch('1..0');
        expect(actual, false);
      });

      test('!', () {
        final bool actual = pattern.hasMatch('!');
        expect(actual, false);
      });

      test('=', () {
        final bool actual = pattern.hasMatch('=');
        expect(actual, false);
      });

      test(r'$', () {
        final bool actual = pattern.hasMatch(r'$');
        expect(actual, false);
      });

      test('.', () {
        final bool actual = pattern.hasMatch('.');
        expect(actual, false);
      });
    });
  });
}
