part of '../../../main.dart';

Route<dynamic> onGenerateRoute(RouteSettings routeSettings) {
  switch (routeSettings.name) {
    case RouteName.loginPage:
      return MaterialPageRoute(builder: (context) {
        return LoginPage();
      });
    case RouteName.registerPage:
      return MaterialPageRoute(builder: (context) {
        return RegisterPage();
      });
    default:
      return MaterialPageRoute(builder: (context) {
        return LoginPage();
      });
  }
}
