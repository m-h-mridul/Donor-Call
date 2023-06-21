// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donercall/service/helplineservice.dart';
import 'package:donercall/model/helplinemodel.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class HelpLineController extends GetxController {
  HelplineService helplineService = HelplineService();
  TextEditingController helplineName = TextEditingController();
  TextEditingController helplineLocation = TextEditingController();
  TextEditingController helplineNumber = TextEditingController();
  final fromkey = GlobalKey<FormState>();
  FirebaseStorage storage = FirebaseStorage.instance;
  RxList<HelpLinemodel> helplinelist = <HelpLinemodel>[].obs;

  @override
  void onInit() {
    helplinelist.bindStream(helplineService.gethelplinelist());
    super.onInit();
  }

  addhelpline() async {
    HelpLinemodel helplineModel = HelpLinemodel(
      location: helplineLocation.text.toString(),
      name: helplineName.text.toString(),
      mobile: helplineNumber.text.toString(),
      image: "",
      addtime: Timestamp.now().toString(),
      description: "",
      ureid: '',
    );
    return helplineService.addhelpline(helplineModel);
  }

  clearTextField() {
    helplineLocation.clear();
    helplineName.clear();
    helplineNumber.clear();
  }
}
