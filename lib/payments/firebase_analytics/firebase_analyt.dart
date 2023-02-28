import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:firebase_analytics_plugin/firebase_analytics_plugin.dart';

class FirebasePluginAnalytics extends StatelessWidget {
  const FirebasePluginAnalytics({key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Firebase Analytics")),
      body: Center(
        child: ElevatedButton(
          onPressed: () async {
            log("Pressing message");
            await MyAnalytics.initialize();
            MyAnalytics.logEvent(
                'Elevated Button', {'Button': 'Pressed_Event'});
          },
          child: const Text("Add Analytics"),
        ),
      ),
    );
  }
}
