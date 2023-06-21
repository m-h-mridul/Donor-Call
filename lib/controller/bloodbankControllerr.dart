// ignore_for_file: file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import '../helper/callingname.dart';
import '../service/bloodbankService.dart';
import '../model/bloodbank_model.dart';

class BloodBankContoller extends GetxController {
  BloodBankService bloodBankService = BloodBankService();
  BloodBankContoller to() => Get.find<BloodBankContoller>();
  TextEditingController bloodbankName = TextEditingController();
  TextEditingController bloodbankLocation = TextEditingController();
  TextEditingController bloodbankNumber = TextEditingController();
  final fromkey = GlobalKey<FormState>();
  FirebaseStorage storage = FirebaseStorage.instance;
  RxList<BloodBankModel> bloodbanklist = <BloodBankModel>[].obs;

  CollectionReference users =
      FirebaseFirestore.instance.collection(CallingName.bloodbankDB);

  @override
  void onInit() {
    bloodbanklist.bindStream(bloodBankService.getbloodbanklist());
    super.onInit();
  }

  addBloodBank() async {
    BloodBankModel bloodBankModel = BloodBankModel(
      bloodbankLocation: bloodbankLocation.text.toString(),
      bloodbankName: bloodbankName.text.toString(),
      bloodbankphoneNumber: bloodbankNumber.text.toString(),
      bloodbankImage: "",
      bloodbankaddTime: Timestamp.now().toString(),
    );
    return bloodBankService.addBloodBank(bloodBankModel);
  }

  clearTextField() {
    bloodbankLocation.clear();
    bloodbankName.clear();
    bloodbankNumber.clear();
  }
}
