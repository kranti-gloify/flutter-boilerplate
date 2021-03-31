import 'package:flutter/material.dart';

///  [Navigation] is common place for Navigation utils.
///  This includes push, pop, pushNamed methods from Navigator.of(context).
///  Common Place for all navigation utilities.
///  Use [Navigation] like this:
///   ```dart
///   Navigation.pushNamed(context, Routes.login);
///   Navigation.pop();
///   Navigation.pushReplacementNamed(context, 'dashboard');
///   ```
///
class Navigation {
  Navigation._();
  static dynamic pushNamed(BuildContext context, String routeName,
      [Object arguments]) {
    Navigator.of(context).pushNamed(routeName, arguments: arguments);
  }

  static dynamic pushReplacementNamed(BuildContext context, String routeName,
      [Object arguments]) {
    Navigator.of(context).pushReplacementNamed(
      routeName,
      arguments: arguments,
    );
  }

  static dynamic pushAndRemoveUntil(BuildContext context, String routeName,
      [Object arguments]) {
    Navigator.of(context).pushNamedAndRemoveUntil(
        routeName, (Route<dynamic> route) => false,
        arguments: arguments);
  }

  static dynamic pop(BuildContext context) {
    Navigator.of(context).pop();
  }

  /// [popAndPushNamed] - Pop the current route off the navigator and push a named route in its place.
  static dynamic popAndPushNamed(BuildContext context, String routeName,
      [Object arguments]) {
    Navigator.of(context).popAndPushNamed(routeName, arguments: arguments);
  }

  static bool canPop(BuildContext context) {
    return Navigator.of(context).canPop();
  }
}
