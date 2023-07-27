// ignore_for_file: use_key_in_widget_constructors, prefer_const_constructors, must_be_immutable

import 'dart:async';
import 'package:donercall/controller/mapcontroller.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/screen/home.dart';
import 'package:donercall/screen/pageviwer/pageviewr.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:lottie/lottie.dart';
import '../service/stroage.dart';

class SplashScreen extends StatelessWidget {
  static const name = '/splash';
  // SplashScreen();

  Stroage memory = Stroage();

  @override
  Widget build(BuildContext context) {
    MapController mapController = MapController();
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        systemNavigationBarColor: Color(0xFFFF2156), // navigation bar color
        statusBarColor: Color(0xFFFF2156),
        statusBarIconBrightness: Brightness.dark,
      ),
    );

    Future.delayed(Duration(seconds: 2), () async {
      memory.ans = await memory.userloginorNot();
    });
    Future.delayed(Duration(seconds: 2), () async {
      if ( mapController.userMapPermission.value){
          // await Geolocator.openAppSettings();
          // await locationPermissionCheak();
      }
  
    });

    MediaQuerypage.init(context);
    Timer(
        Duration(seconds: 3),
        () async => memory.ans!
                ? Get.offAllNamed(Home.name)
                : Get.offAllNamed(Pagevier.name)
            );
    return Scaffold(
      backgroundColor: Color(0xFFFF2156),
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        child: Lottie.asset('assets/lotties/animation_kyg309ev.json'),
      ),
    );
  }
}
