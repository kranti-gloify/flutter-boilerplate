import 'dart:async' show runZoned;
import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/app.dart';
import 'package:firebase_core/firebase_core.dart';

void main() async {
  runZoned(() async{
  //   WidgetsFlutterBinding.ensureInitialized();
  // await Firebase.initializeApp();
    // ErrorWidget.withDetails(error: ,);
    runApp(MyApp());
  });
}
