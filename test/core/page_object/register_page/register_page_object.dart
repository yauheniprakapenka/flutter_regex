// import 'package:flutter/foundation.dart';
// import 'package:flutter_driver/flutter_driver.dart';
// import '../../config/test_config.dart';

// class RegisterPageObject {
//   FlutterDriver driver;

//   final _timeout = TestConfig.timeout;

//   RegisterPageObject({
//     @required this.driver,
//   });

//   // FInd keys

//   final firstNamekey = find.byValueKey(RegisterFormKeys.firstNameFieldKey);
//   final lastNameKey = find.byValueKey(RegisterFormKeys.lastNameFieldKey);
//   final phoneKey = find.byValueKey(RegisterFormKeys.phoneFieldKey);
//   final emailKey = find.byValueKey(RegisterFormKeys.emailFieldKey);
//   final sendButtonKey = find.byValueKey(RegisterFormKeys.sendButtonKey);
//   final titleKey = find.byValueKey('titleKey');
//   final successfulRegistrationKey =
//       find.byValueKey('successfulRegistrationKey');

//   // tap
//   Future<void> tapOnFirstNameField() async {
//     await driver.tap(
//       firstNamekey,
//       timeout: _timeout,
//     );
//   }

//   Future<void> tapOnLastNameField() async {
//     await driver.tap(
//       lastNameKey,
//       timeout: _timeout,
//     );
//   }

//   Future<void> tapOnPhoneField() async {
//     await driver.tap(
//       phoneKey,
//       timeout: _timeout,
//     );
//   }

//   Future<void> tapOnEmailField() async {
//     await driver.tap(
//       emailKey,
//       timeout: _timeout,
//     );
//   }

//   Future<void> tapOnSendButton() async {
//     await driver.tap(
//       sendButtonKey,
//       timeout: _timeout,
//     );
//   }

//   // enter

//   Future<void> enterText(String value) async {
//     await driver.enterText(
//       value,
//       timeout: _timeout,
//     );
//   }

//   // get

//   Future<String> getTextFromPhoneField() async {
//     return await driver.getText(
//       phoneKey,
//       timeout: _timeout,
//     );
//   }

//   // find

//   Future<String> findTitleText() async {
//     return await driver.getText(
//       titleKey,
//       timeout: _timeout,
//     );
//   }

//   Future<String> findSuccessfulText() async {
//     return await driver.getText(
//       successfulRegistrationKey,
//       timeout: _timeout,
//     );
//   }

//   // wait

//   Future<void> waitForFirstNameEmptyError() async {
//     final text = ValidationError.enterFirstName;
//     return await driver.getText(
//       find.text(text),
//       timeout: _timeout,
//     );
//   }

//   Future<void> waitForLastNameEmptyError() async {
//     final text = ValidationError.enterLastName;
//     return await driver.getText(
//       find.text(text),
//       timeout: _timeout,
//     );
//   }

//   Future<void> waitForPhoneEmptyError() async {
//     final text = ValidationError.fillPhone;
//     return await driver.getText(
//       find.text(text),
//       timeout: _timeout,
//     );
//   }

//   Future<void> waitForEmailEmptyError() async {
//     final text = ValidationError.fillEmail;
//     return await driver.getText(
//       find.text(text),
//       timeout: _timeout,
//     );
//   }
// }
