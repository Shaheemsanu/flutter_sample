import 'package:flutter/material.dart';
import 'package:flutter_application_1/utils/app_colors.dart';
import 'package:flutter_application_1/utils/font_utils.dart';
import 'package:flutter_application_1/utils/screen_utils.dart';
import 'package:flutter_svg/flutter_svg.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var screenHeight = MediaQuery.of(context).size.height;
    var screenwidth = MediaQuery.of(context).size.width;
    ScreenUtils.screensize(screenwidth, screenHeight);

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(
              horizontal: ScreenUtils.getscreenwidth() * 0.0416,
              vertical: ScreenUtils.getscreenheight() * 0.0233),
          child: SvgPicture.asset(
            'assets/images/wer_logo.svg',
            height: ScreenUtils.getscreenheight() * 0.035,
            width: ScreenUtils.getscreenwidth() * 0.293,
          ),
        ),
        Padding(
          padding:
              EdgeInsets.only(right: ScreenUtils.getscreenwidth() * 0.0416),
          child: Container(
            decoration: const BoxDecoration(
                color: AppColors.secondaryColor,
                borderRadius: BorderRadius.only(
                    topRight: Radius.circular(8),
                    bottomRight: Radius.circular(8))),
            height: ScreenUtils.getscreenheight() * 0.1766,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: EdgeInsets.only(
                  bottom: ScreenUtils.getscreenheight() * 0.0598),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("Hi Good Morning,",
                          style: FontUtils.get10FontStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.homelightgrey,
                          )),
                      Text("Ahmed Hussain",
                          style: FontUtils.get19FontStyle(
                            fontWeight: FontWeight.w600,
                            color: AppColors.primaryColor,
                          )),
                    ],
                  ),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text("10:34 AM Oct 21",
                          style: FontUtils.get10FontStyle(
                            fontWeight: FontWeight.w500,
                            color: AppColors.primaryColor,
                          )),
                      SizedBox(
                        height: ScreenUtils.getscreenheight() / 50,
                      ),
                      SizedBox(
                        height: ScreenUtils.getscreenheight() / 23,
                        width: ScreenUtils.getscreenwidth() / 3.2,
                        child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: AppColors.primaryColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(50))),
                            onPressed: () {},
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(
                                      bottom:
                                          ScreenUtils.getscreenheight() / 200),
                                  child: SvgPicture.asset(
                                      'assets/images/ic_power.svg',
                                      height:
                                          ScreenUtils.getscreenheight() / 39,
                                      width:
                                          ScreenUtils.getscreenwidth() / 20.5,
                                      color: AppColors.homegreenicon),
                                ),
                                SizedBox(
                                    width: ScreenUtils.getscreenwidth() / 50),
                                Text(
                                  "Check In",
                                  style: FontUtils.get11FontStyle(
                                    fontWeight: FontWeight.w700,
                                    color: AppColors.whitecolor,
                                  ),
                                )
                              ],
                            )),
                      ),
                    ],
                  )
                ],
              ),
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
              top: ScreenUtils.getscreenheight() * 0.051,
              left: ScreenUtils.getscreenwidth() * 0.0416,
              right: ScreenUtils.getscreenwidth() * 0.0416),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                Text("56",
                    style: FontUtils.get36FontStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.primaryColor,
                    )),
                Text("Total Scooters",
                    style: FontUtils.get12FontStyle(
                      fontWeight: FontWeight.w600,
                      color: AppColors.homecontainertextgrey,
                    ))
              ]),
              SizedBox(
                width: ScreenUtils.getscreenwidth() * 0.02,
              ),
              homecontainer(textnumber: '05', containertext: 'Today Swap'),
              homecontainer(textnumber: '24', containertext: 'Battery in hand'),
            ],
          ),
        ),
        SizedBox(
          height: ScreenUtils.getscreenheight() * 0.38,
        ),
        Center(
          child: SizedBox(
            height: ScreenUtils.getscreenheight() / 20,
            width: ScreenUtils.getscreenwidth() / 3.5,
            child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                    // padding: EdgeInsets.symmetric(
                    //     horizontal: ScreenUtils.getscreenwidth() * 0.272,
                    //     vertical: ScreenUtils.getscreenheight() * 0.016),
                    primary: AppColors.primaryColor,
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8))),
                onPressed: () {},
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  //mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_qr.svg',
                      height: ScreenUtils.getscreenheight() / 45,
                    ),
                    SizedBox(
                      width: ScreenUtils.getscreenwidth() / 22,
                    ),
                    Text("SCAN",
                        style: FontUtils.get12FontStyle(
                            color: AppColors.whitecolor))
                  ],
                )),
          ),
        ),
      ],
    );
  }

  Widget homecontainer(
      {required String textnumber, required String containertext}) {
    return Container(
      height: ScreenUtils.getscreenheight() * 0.1,
      width: ScreenUtils.getscreenwidth() * 0.3,
      decoration: const BoxDecoration(
          color: AppColors.homecontainergrey,
          borderRadius: BorderRadius.all(Radius.circular(4))),
      child: Padding(
        padding: EdgeInsets.all(ScreenUtils.getscreenwidth() * 0.03),
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
           mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(textnumber,
                  style: FontUtils.get18FontStyle(
                    fontWeight: FontWeight.w600,
                    color: AppColors.primaryColor,
                  )),
                //  SizedBox(height: ScreenUtils.getscreenheight()/63,),
              Text(containertext,
                  style: FontUtils.get9FontStyle(
                    fontWeight: FontWeight.w600,
                  ))
            ]),
      ),
    );
  }
}
