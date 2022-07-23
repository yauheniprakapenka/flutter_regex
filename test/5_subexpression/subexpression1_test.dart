import 'package:test/test.dart';

/// Круглые скобки `(` и `)` являются метасимволами. Чтобы обеспечить совпадение со знаками
/// круглых скобок, их нужно экранировать `\(` и `\)`.
///
/// Подвыражения применяются для группирования отдельных частей выражения и определяются
/// с помощью круглых скобок.
///
/// К примерам подвыражений относится возможность точно
/// контролировать повторяемость шаблонов с помощью символов повторения, а также
/// правильно определять условия в логической операции ИЛИ.
///
/// Подвыражения допускают вложения, если в этом есть потребность.

void main() {
  const String pattern = '(&nbsp;){2,}';

  group('Has match', () {
    test('Test 1', () {
      final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;&nbsp;bbb');
      expect(actual, true);
    });

    test('Test 2', () {
      final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;&nbsp;&nbsp;bbb');
      expect(actual, true);
    });

    group('Has not match', () {
      test('Test 1', () {
        final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;bbb');
        expect(actual, false);
      });

      test('Test 2', () {
        final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;bbb&nbsp;');
        expect(actual, false);
      });
    });
  });
}
