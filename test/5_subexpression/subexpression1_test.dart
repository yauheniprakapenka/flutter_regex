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

  /// aaa&nbsp;bbb fail
  /// aaa&nbsp;&nbsp;bbb OK
  /// aaa&nbsp;&nbsp;&nbsp;bbb OK
  /// aaa&nbsp;bbb&nbsp; fail

  group('Has match', () {
    test('Ex1', () {
      final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;&nbsp;bbb');
      expect(actual, true);
    });

    test('Ex2', () {
      final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;&nbsp;&nbsp;bbb');
      expect(actual, true);
    });

    group('Has not match', () {
      test('Ex1', () {
        final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;bbb');
        expect(actual, false);
      });

      test('Ex2', () {
        final bool actual = RegExp(pattern).hasMatch('aaa&nbsp;bbb&nbsp;');
        expect(actual, false);
      });
    });
  });
}
