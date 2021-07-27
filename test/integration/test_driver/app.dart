import 'package:flutter/widgets.dart';
import 'package:flutter_driver/driver_extension.dart';
import 'package:flutter_testing/main.dart' as app;
import 'package:flutter_testing/main.dart';

import '../../core/constants/driver_commands.dart';

void main() {
  enableFlutterDriverExtension(handler: (command) async {
    switch (command) {
      case DriverCommands.restart:
        _restartApp();
        return 'Restart app';
    }
    throw Exception('Unknown command');
  });

  app.main();
}

void _restartApp() {
  runApp(
    App(key: UniqueKey()),
  );
}
