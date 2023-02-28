library firebase_analytics_plugin;

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_analytics/firebase_analytics.dart';

class MyAnalytics {
  static Future<void> initialize() async {
    await Firebase.initializeApp();
  }

  static Future<void> logEvent(String eventName, [Map<String, dynamic>? parameters]) async {
    await FirebaseAnalytics.instance.logEvent(
      name: eventName,
      parameters: parameters,
    );
  }
}
