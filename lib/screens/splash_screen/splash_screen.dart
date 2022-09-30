import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/common_navigation.dart';
import 'package:flutter_svg/svg.dart';

import '../../utils/screen_utils.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  late double screenHeight;
  late double screenwidth;
  @override
  Widget build(BuildContext context) {
    screenHeight = MediaQuery.of(context).size.height;
    screenwidth = MediaQuery.of(context).size.width;
    ScreenUtils.screensize(screenwidth, screenHeight);

     Future.delayed(const Duration(seconds: 4),
    () => CommonNavigation(parentcontext: context).navigatelogin());
    return SafeArea(
        child: Scaffold(
      body: SizedBox(
        height: ScreenUtils.getscreenheight(),
        width: ScreenUtils.getscreenwidth(),
        child: Center(
          child: SvgPicture.asset(
            'assets/images/wer_logo.svg',
            height: ScreenUtils.getscreenheight() * 0.05,
            width: ScreenUtils.getscreenwidth() * 0.555,
            fit: BoxFit.fill,
          ),
        ),
      ),
    ));
  }
}
