// ignore_for_file: non_constant_identifier_names, file_names, prefer_const_constructors

import 'package:donercall/controller/notificationCon.dart';
import 'package:donercall/controller/profileController.dart';
import 'package:donercall/screen/doner/donerView.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../screen/ambulance/ambulance.dart';
import '../screen/emergency/emergency.dart';

class MainAppController {
  ProfileController profileController = ProfileController();
  NotificationController notificationController = NotificationController();
  List<Widget> view = [const DonerView(), AmbulanceView(), Emeregency()];

  //**
  //*bottom naviagation bar
  // */
  final iconList = <IconData>[
    Icons.home_outlined,
    Icons.newspaper,
    Icons.medical_services,
  ];
  //**
  //*controller
  // */

  RxInt bottom_view = 0.obs;
  onbottomview_change(int value) {
    bottom_view.value = value;
  }
}
