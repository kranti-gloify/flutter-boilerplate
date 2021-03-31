import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/layout/base.dart';
import 'package:flutter_boilerplate/screens/splash/splash.dart';
import 'package:flutter_boilerplate/screens/introduction/introduction.dart';
import 'package:flutter_boilerplate/screens/news/news.dart';

/// [Routes] which contains common routing configuaration needed for the Application.
/// This includes all pages and all routes mapped to each other.
/// This also includes Routing table and Route for Unhandled routes.
/// Use [Routes] in MaterialApp:
///  ```dart
///  MaterialApp(
///    title: 'Flutter_App',
///    routes: Routes.buildRoutes,
///    initialRoute: Routes.login,
///    onUnknownRoute: Routes.unknownRoute,
///  );
///  ```

class Routes {
  Routes._();

  // routes
  static const splashScreen = '/splash-screen';
  static const introScreen = '/intro-screen';
  static const news = '/news';
  static const about = '/about';

  /// Routing Table needed for the App.
  static Map<String, WidgetBuilder> get buildRoutes {
    return {
      splashScreen: (BuildContext context) =>
          BaseLayout(page: SplashScreen(), isAppBar: false),
      introScreen: (BuildContext context) =>
          BaseLayout(page: IntroductionScreen(), isAppBar: false),
      news: (BuildContext context) =>
          BaseLayout(page: News(), isAppBar: true, text: 'News'),
    };
  }

  /// Handler for Error and Unhandled pages.
  static Function get unknownRoute {
    return (settings) {
      MaterialPageRoute(
        builder: (ctx) => IntroductionScreen(),
      );
    };
  }

  /// Configures the initial route.
  static String get initialRoute {
    return Routes.news;
  }
}
