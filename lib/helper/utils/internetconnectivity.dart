import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';

class Internetcheaker {
  static RxBool ans = false.obs;
  Internetcheaker() {
    intenetConnectivity();
  }
  Future intenetConnectivity() async {
    try {
      final result = await InternetAddress.lookup('example.com');
      if (result.isNotEmpty && result[0].rawAddress.isNotEmpty) {
        ans.value = true;
      }
    } on SocketException catch (_) {
      ans.value = false;
      Get.snackbar(
        "Your are in Off-line",
        "Please make sure your are in online for chearking blood",
        duration: const Duration(seconds: 5),
        backgroundColor: Colors.black,
        colorText: Colors.white,
        icon: const Icon(Icons.wifi_off, color: Colors.white),
        snackPosition: SnackPosition.BOTTOM,
      );
    }
  }
}
