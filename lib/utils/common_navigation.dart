import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/bottom_nav_screen/bottom_nav_screen.dart';
import 'package:flutter_application_1/screens/login_screen/login_screen.dart';
import 'package:flutter_application_1/screens/splash_screen/splash_screen.dart';

class CommonNavigation {
  BuildContext? navigatecontex;
  CommonNavigation({required BuildContext parentcontext}) {
    navigatecontex = parentcontext;
  }
  navigatelogin() {
    return Navigator.pushReplacement(
        navigatecontex!,
        MaterialPageRoute(
          builder: (context) => const LoginScreen(),
        ));
  }

  navigatesplash() {
    return Navigator.pushReplacement(
        navigatecontex!,
        MaterialPageRoute(
          builder: (context) => const SplashScreen(),
        ));
  }

  navigatebottomnav() {
    return Navigator.pushReplacement(
        navigatecontex!,
        MaterialPageRoute(
          builder: (context) => const BottomNavScreen(),
        ));
  }
}