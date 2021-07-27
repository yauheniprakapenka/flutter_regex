import 'package:flutter_driver/flutter_driver.dart';
import 'package:flutter_testing/domain/utils/validators/validate_digits.dart';
import 'package:test/test.dart';

import '../../core/constants/driver_commands.dart';
import '../../core/constants/test_data.dart';
import '../../core/page_object/login_page/login_page_object.dart';
import '../../core/page_object/register_page/register_page_object.dart';

part 'tests/login_form_test.dart';
part 'tests/register_form_test.dart';

void main() {
  runLoginFormTests();
  runRegisterFormTests();
}
