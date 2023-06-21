// ignore_for_file: non_constant_identifier_names, file_names, unused_catch_clause, prefer_interpolation_to_compose_strings

import 'dart:io';

import 'package:donercall/helper/callingname.dart';
import 'package:donercall/model/userinformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/state_manager.dart';
import 'package:firebase_storage/firebase_storage.dart';

class ProfileEditContoller extends GetxController {
  RxString imagefilename = ''.obs;
  FirebaseStorage storage = FirebaseStorage.instance;


  //**sent image into firabse stroage */
  image_sentFirebase(String uid) async {
    try {
      await storage.ref(uid + 'user_image').putFile(File(imagefilename.value));
    } on FirebaseException catch (error) {
      // print(error);
    } catch (err) {
      // print(err);
    }
  }

  //**edit information sent api */
  UpdatedataIn_firebase(NonStaticUserInformation userInfo) async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(UserInformation.userId)
        .update({
      CallingName.name: userInfo.name,
      CallingName.bloodgrope: userInfo.blood_grope!.toUpperCase(),
      CallingName.location: userInfo.location,
      CallingName.mobile: userInfo.mobile,
      CallingName.date: userInfo.date,
      CallingName.donate_time: userInfo.date,
    });
  }
}
