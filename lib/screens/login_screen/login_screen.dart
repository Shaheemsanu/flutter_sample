import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/common_navigation.dart';
import 'package:flutter_application_1/utils/font_utils.dart';
import 'package:flutter_application_1/utils/screen_utils.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  bool isObscure = true;
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    ScreenUtils.screensize(screenwidth, screenHeight);

    return SafeArea(
      child: Scaffold(
        body: Container(
          height: ScreenUtils.getscreenheight(),
          width: ScreenUtils.getscreenwidth(),
          decoration: const BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/login1.png'))),
          child: Stack(
            children: [
              Container(
                color: AppColors.primaryColor.withOpacity(0.4),
                height: ScreenUtils.getscreenheight(),
                width: ScreenUtils.getscreenwidth(),
              ),
              ScrollConfiguration(
                behavior: NoGlowBehaviour(),
                child: SingleChildScrollView(
                  reverse: true,
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: EdgeInsets.symmetric(
                        vertical: ScreenUtils.getscreenheight() * 0.1,
                        horizontal: ScreenUtils.getscreenwidth() * 0.057),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(
                                width: 25,
                              ),
                              Text("Ready to \nRide?",
                                  textAlign: TextAlign.left,
                                  maxLines: 2,
                                  style: FontUtils.get48FontStyle(
                                    fontWeight: FontWeight.w200,
                                    color: AppColors.secondaryColor,
                                  ))
                            ],
                          ),
                          SizedBox(
                              height: ScreenUtils.getscreenheight() * 0.27),
                          loginTextFielduser(),
                          SizedBox(
                              height: ScreenUtils.getscreenheight() * 0.016),
                          logintextfieldpassword(),
                          SizedBox(
                              height: ScreenUtils.getscreenheight() * 0.016),
                          footerbutton()
                        ]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget footerbutton() {
    return ElevatedButton(
        style: ElevatedButton.styleFrom(
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
            primary: AppColors.secondaryColor,
            onPrimary: AppColors.homegreenicon,
            fixedSize: Size(ScreenUtils.getscreenwidth(),
                ScreenUtils.getscreenheight() * 0.059)),
        onPressed: () {
          CommonNavigation(parentcontext: context).navigatebottomnav();
        },
        child: Text('Login',
            style: FontUtils.get14FontStyle(
              fontWeight: FontWeight.w700,
              color: AppColors.loginBlack,
            )));
  }

  Widget logintextfieldpassword() {
    return TextFormField(
      style: FontUtils.get15FontStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
      obscureText: isObscure,
      obscuringCharacter: '*',
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              isObscure = !isObscure;
            });
          },
          icon: isObscure
              ? const Icon(
                  Icons.visibility,
                  color: AppColors.primaryColor,
                )
              : const Icon(
                  Icons.visibility_off,
                  color: AppColors.primaryColor,
                ),
        ),
        suffixIconColor: AppColors.homelightgrey,
        contentPadding: const EdgeInsets.symmetric(horizontal: 25, vertical: 5),
        filled: true,
        fillColor: AppColors.whitecolor,
        hintText: "Password",
        hintStyle: FontUtils.get15FontStyle(
            fontWeight: FontWeight.w500, color: AppColors.loginTextFieldGrey),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }

  Widget loginTextFielduser() {
    return TextFormField(
      style: FontUtils.get15FontStyle(
        fontWeight: FontWeight.w500,
        color: AppColors.primaryColor,
      ),
      textAlign: TextAlign.start,
      decoration: InputDecoration(
        filled: true,
        fillColor: AppColors.whitecolor,
        hintText: "Username",
        hintStyle: FontUtils.get15FontStyle(
          fontWeight: FontWeight.w500,
          color: AppColors.loginTextFieldGrey,
        ),
        border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(50)),
      ),
    );
  }
}

class NoGlowBehaviour extends ScrollBehavior {
  @override
  Widget buildOverscrollIndicator(
      BuildContext context, Widget child, ScrollableDetails details) {
    return child;
  }
}
