import 'package:dart_console/validate_email.dart';
import 'package:test/test.dart';

void main() {
  group('Valid email', () {
    test('x.x@xx.xx', () {
      final bool actual = validateEmail('x.x@xx.xx');
      expect(actual, true);
    });

    test('x-x@xx.xx', () {
      final bool actual = validateEmail('x-x@xx.xx');
      expect(actual, true);
    });

    test('x_x@xx.xx', () {
      final bool actual = validateEmail('x_x@xx.xx');
      expect(actual, true);
    });

    test('x_x_x@xx.xx', () {
      final bool actual = validateEmail('x_x_x@xx.xx');
      expect(actual, true);
    });

    test('x.x.x@xx.xx', () {
      final bool actual = validateEmail('x.x.x@xx.xx');
      expect(actual, true);
    });

    test('7x.x@xx.xx', () {
      final bool actual = validateEmail('7x.x@xx.xx');
      expect(actual, true);
    });

    test('x7.x@xx.xx', () {
      final bool actual = validateEmail('x7.x@xx.xx');
      expect(actual, true);
    });

    test('0_x.x-9.x@xx.xx', () {
      final bool actual = validateEmail('0_x.x-9.x@xx.xx');
      expect(actual, true);
    });

    test('77@xx.xx', () {
      final bool actual = validateEmail('77@xx.xx');
      expect(actual, true);
    });

    test('xx@x-x.xx', () {
      final bool actual = validateEmail('xx@x-x.xx');
      expect(actual, true);
    });

    test('xx@xx.xx', () {
      final bool actual = validateEmail('xx@x.x.com');
      expect(actual, true);
    });

    test('Valid min range', () {
      final bool actual = validateEmail('xx@xx.xx');
      expect(actual, true);
    });

    test('Valid range after min', () {
      final bool actual = validateEmail('xx@xx.xxx');
      expect(actual, true);
    });

    test('Valid max range', () {
      const int multiplier = 246; // max range (256) - min range (8);
      final bool actual = validateEmail('xx@xx.xx${'x' * multiplier}');
      expect(actual, true);
    });

    test('Valid range in the middle', () {
      const int multiplier = 100; // number from the middle of max range
      final bool actual = validateEmail('xx@xx.xx${'x' * multiplier}');
      expect(actual, true);
    });
  });

  group('Invalid email', () {
    test('empty', () {
      final bool actual = validateEmail('');
      expect(actual, false);
    });

    test('@', () {
      final bool actual = validateEmail('@');
      expect(actual, false);
    });

    test('x@', () {
      final bool actual = validateEmail('x@');
      expect(actual, false);
    });

    test('@x', () {
      final bool actual = validateEmail('@x');
      expect(actual, false);
    });

    test('x@x.', () {
      final bool actual = validateEmail('x@x.');
      expect(actual, false);
    });

    test('x@x.x', () {
      final bool actual = validateEmail('x@x.x');
      expect(actual, false);
    });

    test('xx@x.x', () {
      final bool actual = validateEmail('xx@x.x');
      expect(actual, false);
    });

    test('x@xx.x', () {
      final bool actual = validateEmail('x@xx.x');
      expect(actual, false);
    });

    test('x@x.xx', () {
      final bool actual = validateEmail('x@x.xx');
      expect(actual, false);
    });

    test('.x@xx.xx', () {
      final bool actual = validateEmail('.x@xx.xx');
      expect(actual, false);
    });

    test('x.@xx.xx', () {
      final bool actual = validateEmail('x.@xx.xx');
      expect(actual, false);
    });

    test('_x@xx.xx', () {
      final bool actual = validateEmail('_x@xx.xx');
      expect(actual, false);
    });

    test('x_@xx.xx', () {
      final bool actual = validateEmail('x_@xx.xx');
      expect(actual, false);
    });

    test('x#x@xx.xx', () {
      final bool actual = validateEmail('x#x@xx.xx');
      expect(actual, false);
    });

    test('x!x@xx.xx', () {
      final bool actual = validateEmail('x!x@xx.xx');
      expect(actual, false);
    });

    test('x x@xx.xx', () {
      final bool actual = validateEmail('x x@xx.xx');
      expect(actual, false);
    });

    test('xx@x x.xx', () {
      final bool actual = validateEmail('xx@x x.xx');
      expect(actual, false);
    });

    test(' xx@xx.xx', () {
      final bool actual = validateEmail(' xx@xx.xx');
      expect(actual, false);
    });

    test('xx@xx.xx ', () {
      final bool actual = validateEmail('xx@xx.xx ');
      expect(actual, false);
    });

    test('xx @xx.xx', () {
      final bool actual = validateEmail('xx @xx.xx');
      expect(actual, false);
    });

    test('xx@ xx.xx', () {
      final bool actual = validateEmail('xx@ xx.xx');
      expect(actual, false);
    });

    test('xx@xx. xx', () {
      final bool actual = validateEmail('xx@xx. xx');
      expect(actual, false);
    });

    test('xx@x#x.xx', () {
      final bool actual = validateEmail('xx@x#x.xx');
      expect(actual, false);
    });

    test('xx@x_.xx', () {
      final bool actual = validateEmail('xx@x_.xx');
      expect(actual, false);
    });

    test('Not valid min range', () {
      final bool actual = validateEmail('xx@x.xx');
      expect(actual, false);
    });

    test('Not valid max range', () {
      const int multiplier = 247; // max range (256) - min range (8) + 1;
      final bool actual = validateEmail('xx@xx.xx${'x' * multiplier}');
      expect(actual, false);
    });

    // Start traceability matrix testing

    test('x__x@xx.xx', () {
      final bool actual = validateEmail('__@xx.xx');
      expect(actual, false);
    });

    test('x..x@xx.xx', () {
      final bool actual = validateEmail('..@xx.xx');
      expect(actual, false);
    });

    test('x--x@xx.xx', () {
      final bool actual = validateEmail('--@xx.xx');
      expect(actual, false);
    });

    test('x._x@xx.xx', () {
      final bool actual = validateEmail('x._x@xx.xx');
      expect(actual, false);
    });

    test('x.-x@xx.xx', () {
      final bool actual = validateEmail('x.-x@xx.xx');
      expect(actual, false);
    });

    test('x-.x@xx.xx', () {
      final bool actual = validateEmail('x-.x@xx.xx');
      expect(actual, false);
    });

    test('x-_x@xx.xx', () {
      final bool actual = validateEmail('x-_x@xx.xx');
      expect(actual, false);
    });

    test('x_.x@xx.xx', () {
      final bool actual = validateEmail('x_.x@xx.xx');
      expect(actual, false);
    });

    test('x_-x@xx.xx', () {
      final bool actual = validateEmail('x_-x@xx.xx');
      expect(actual, false);
    });

    // End traceability matrix testing
  });
}
