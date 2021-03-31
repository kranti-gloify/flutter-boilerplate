import 'package:flutter/material.dart';
import 'package:flutter_boilerplate/resources/images.dart';
import 'package:flutter_boilerplate/resources/strings.dart';
import 'package:flutter_boilerplate/routes/routes.dart';
// import 'package:flutter_boilerplate/resources/images.dart';
// import 'package:flutter_boilerplate/resources/strings.dart';
// import 'package:flutter_boilerplate/routes/routes.dart';
// import 'package:shared_preferences/shared_preferences.dart';

// import '../../main.dart';

/// [SplashScreen] is the initial screen that loads into the app.
/// This screen will check whether the User is logged in already.
/// [SplashScreen] will allow the user to land on walkthrough screen if the users for the first time
/// If already installed and already logged in then user will be navigated to dashboard else login

class SplashScreen extends StatefulWidget {
  @override
  _SplashScreenState createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool isLogin = false;
  @override
  void initState() {
    super.initState();
    checkLogin();
  }

  Future<void> checkLogin() async {
    // SharedPreferences prefs = await SharedPreferences.getInstance();

    bool isLogin = true;

    Future.delayed(const Duration(milliseconds: 1500), () {
      if (isLogin) {
        Navigator.pushReplacementNamed(context, Routes.introScreen);
      } else {
        Navigator.pushReplacementNamed(context, Routes.introScreen);
        // Navigator.pushReplacementNamed(context, Routes.home);
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: Image.asset(
                Images.SPLASH_LOGO,
                scale: 1,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Text(
                Strings.SPLASH_TEXT,
                style: Theme.of(context).textTheme.subtitle1,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
