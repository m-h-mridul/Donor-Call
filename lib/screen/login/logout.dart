// ignore_for_file: non_constant_identifier_names, prefer_const_constructors

import 'package:donercall/helper/service/cleanStroage.dart';
import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/service/stroage.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

Stroage memory = Stroage();
Logout(BuildContext context) {
  // set up the button
  Widget C_Button = TextButton(
    child: Text("Cancel"),
    onPressed: () {
      Navigator.of(context).pop();
    },
  );
  Widget L_Button = TextButton(
    child: Text("Logout"),
    onPressed: () async {
      // make flase user that he/she are off line
      // signout from firebase
      await FirebaseAuth.instance.signOut();
      await deleteCacheDir();
      // Get.delete<DonerRequestController>();
      // Get.delete<MainAppController>();
      // Get.deleteAll();
      memory.cleanstroage();
      // goto the app home screen
      // Get.offAllNamed(UserAuthencation.name);
    },
  );

  // set up the AlertDialog
  AlertDialog alert = AlertDialog(
    title: Text(
      "Logout!",
      style: TextStyleManger.black16,
    ),
    content: const Text("You want to Logout ...."),
    shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(18.0))),
    actions: [C_Button, L_Button],
  );

  // show the dialog
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return alert;
    },
  );
}
