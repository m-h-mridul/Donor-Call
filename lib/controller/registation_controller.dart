// ignore_for_file: camel_case_types, unused_local_variable, non_constant_identifier_names

import 'dart:async';
import 'package:donercall/service/stroage.dart';
import 'package:donercall/helper/callingname.dart';
import 'package:donercall/helper/toast.dart';
import 'package:donercall/model/userinformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get.dart';

import '../screen/home.dart';
import '../screen/registation/userinformationget.dart';

class Registationcontroller extends GetxController {
  String errors = '';
  RxString verificationId = ''.obs;
  RxString imagefilename = ''.obs;
  RxString smsCode = "".obs;
  final Stroage _stroage = Stroage();
  FirebaseAuth auth = FirebaseAuth.instance;
  NonStaticUserInformation userInfo = NonStaticUserInformation();
  List location = [];
  RxString bloodgropeselected = 'AB+'.obs;
  TextEditingController username = TextEditingController();

  TextEditingController donate_time = TextEditingController();

  TextEditingController blood_grope = TextEditingController();

  RxInt secondsRemaining = 60.obs; // Total seconds for the countdown timer
  late Timer _timer;
  

  register_User() async {
    startTimer();
    try {
      auth.verifyPhoneNumber(
          phoneNumber: "+88${userInfo.mobile}",
          timeout: const Duration(seconds: 60),
          verificationCompleted: (AuthCredential authCredential) {},
          verificationFailed: (authException) {
            if (kDebugMode) {
              print(authException.message);
            }
          },
          codeSent: (verification, forceResendingToken) async {
            verificationId.value = verification;
          },
          codeAutoRetrievalTimeout: (value) {
            verificationId.value = value;
            if (kDebugMode) {
              print(value);
            }
          });
    } catch (e) {
      if (kDebugMode) {
        print('Error find in login controller \n$e');
      }
    }
    return errors;
  }

  userDataSent() async {
    await FirebaseFirestore.instance
        .collection('users')
        .doc(UserInformation.userId)
        .set({
      CallingName.user_id: UserInformation.userId,
      CallingName.name: userInfo.name,
      CallingName.bloodgrope: userInfo.blood_grope!.toUpperCase(),
      CallingName.location: userInfo.location,
      CallingName.donate_time: userInfo.date,
      CallingName.mobile: userInfo.mobile,
    });
  }

  void startTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      if (secondsRemaining.value > 0) {
        secondsRemaining.value--;
      } else {
        _timer.cancel();
      }
    });
  }

  otpSent(progress) async {
    try {
      AuthCredential credential = PhoneAuthProvider.credential(
          verificationId: verificationId.value, smsCode: smsCode.value);

      UserCredential userCredential =
          await auth.signInWithCredential(credential);

      var userDataBaseinfo = userCredential.user;

      UserInformation.userId = userCredential.user!.uid;
      _stroage.setUserLogin(UserInformation.userId);

      bool? usersCheak = await checkDocumentExists(
          CallingName.user_collectionName, UserInformation.userId);

      _timer.cancel();

      await Future.delayed(const Duration(seconds: 2));
      progress!.dismiss();

      if (usersCheak) {
        Get.offAllNamed(Home.name);
      } else if (userDataBaseinfo != null) {
        Get.to(() => const UserInfromationGet());
      } else {
        if (kDebugMode) {
          print("Error");
        }
      }
    } catch (e) {
      _timer.cancel();
      progress!.dismiss();
      Get.back();
      showToast(showMessage: e.toString());
    }
  }

  Future<bool> checkDocumentExists(
      String collectionPath, String documentId) async {
    final DocumentReference docRef =
        FirebaseFirestore.instance.collection(collectionPath).doc(documentId);

    final DocumentSnapshot snapshot = await docRef.get();

    return snapshot.exists;
  }
}
