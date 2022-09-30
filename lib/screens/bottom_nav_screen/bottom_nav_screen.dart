import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/account_screen/account_screen.dart';
import 'package:flutter_application_1/screens/history_screen/history_screen.dart';
import 'package:flutter_application_1/screens/home_screen/home_screen.dart';
import 'package:flutter_application_1/screens/map_screen/map_screen.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/font_utils.dart';
import 'package:flutter_application_1/utils/screen_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavScreen extends StatefulWidget {
  const BottomNavScreen({Key? key}) : super(key: key);

  @override
  State<BottomNavScreen> createState() => _BottomNavScreenState();
}

class _BottomNavScreenState extends State<BottomNavScreen> {
  int selectedindex = 0;
  final screen = [
    const HomeScreen(),
    const MapScreen(),
    const HistoryScreen(),
    const AccountScreen(),
  ];
  @override
  Widget build(BuildContext context) {
    List<int> no = [
      0,
      1,
      2,
      3,
    ];
    List iconpath = [
      'ic_home.svg',
      'ic_map.svg',
      'ic_history.svg',
      'ic_account.svg',
    ];
    List<String> icontext = [
      'Home',
      'Map',
      'History',
      'Account',
    ];

    return SafeArea(
      child: Scaffold(
          body: screen[selectedindex],
          bottomNavigationBar: Container(
              height: ScreenUtils.getscreenheight() / 12.23,
              width: ScreenUtils.getscreenwidth(),
              decoration:
                  const BoxDecoration(color: AppColors.whitecolor, boxShadow: [
                BoxShadow(
                    blurRadius: 10,
                    spreadRadius: 0,
                    color: Color.fromARGB(255, 216, 216, 216))
              ]),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: List.generate(4, (index) {
                    return bottomNavitems(
                        no: no[index],
                        iconpath: iconpath[index],
                        icontext: icontext[index]);
                  })))),
    );
  }

  Widget bottomNavitems({
    required int no,
    required String iconpath,
    required String icontext,
  }) {
    return ElevatedButton(
      style: ElevatedButton.styleFrom(
        elevation: 0,
        primary: Colors.white,
      ),
      onPressed: (() {
        setState(() {
          selectedindex = no;
        });
      }),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset('assets/images/$iconpath',
              height: ScreenUtils.getscreenheight() / 42,
              width: ScreenUtils.getscreenwidth() / 22.5,
              color: selectedindex == no
                  ? AppColors.primaryColor
                  : AppColors.loginTextFieldGrey),
          SizedBox(
            height: ScreenUtils.getscreenheight() / 350,
          ),
          Text(
            icontext,
            style: FontUtils.get8FontStyle(
                color: selectedindex == no
                    ? AppColors.primaryColor
                    : AppColors.loginTextFieldGrey),
          )
        ],
      ),
    );
  }
}
