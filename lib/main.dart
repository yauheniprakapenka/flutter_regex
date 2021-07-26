import 'package:flutter/material.dart';
import 'package:flutter_testing/presentation/core/constants/strings/route_name.dart';
import 'package:flutter_testing/presentation/core/style/theme/theme.dart';
import 'package:flutter_testing/presentation/feature/login/page/login_page.dart';
import 'package:flutter_testing/presentation/feature/register/page/register_page.dart';

part 'presentation/core/navigation/on_generate_route.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: LoginPage(),
      debugShowCheckedModeBanner: false,
      theme: buildCustomTheme(),
      onGenerateRoute: onGenerateRoute,
    );
  }
}
