import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_testing/presentation/core/constants/keys/login_page.dart';
import 'package:flutter_testing/presentation/core/constants/keys/register_page.dart';
import 'package:flutter_testing/presentation/feature/login/page/login_page.dart';
import 'package:flutter_testing/presentation/feature/register/page/register_page.dart';

import '../core/constants/test_data.dart';

part 'tests/login_page_test.dart';
part 'tests/register_page_test.dart';

void main() {
  runLoginPageTests();
  runRegisterPageTests();
}
