// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables, must_be_immutable, file_names

import 'package:animated_bottom_navigation_bar/animated_bottom_navigation_bar.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/controller/mainapp_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:donercall/helper/appcolor.dart';

class Home extends StatelessWidget {
  Home({Key? key}) : super(key: key);
  static const name = '/dashboard';

  MainAppController dashboardController = MainAppController();

  @override
  Widget build(BuildContext context) {
    //**status bar theam
    // */
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
        systemNavigationBarColor: Colors.white,
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
        systemNavigationBarIconBrightness: Brightness.dark 
        ));

    dashboardController.profileController.getUserInformatio();
    return SafeArea(
      child: Scaffold(
        body: Obx(() =>
            dashboardController.view[dashboardController.bottom_view.value]),
        bottomNavigationBar: Obx(
          () => AnimatedBottomNavigationBar(
            activeColor: AppColor.red_appcolor,
            icons: dashboardController.iconList,
            activeIndex: dashboardController.bottom_view.value,
            gapLocation: GapLocation.none,
            notchSmoothness: NotchSmoothness.verySmoothEdge,
            leftCornerRadius: MediaQuerypage.pixel! * 1,
            rightCornerRadius: MediaQuerypage.pixel! * 1,
            onTap: (index) {
              dashboardController.onbottomview_change(index);
            },
            //other params
          ),
        ),
      ),
    );
  }
}
