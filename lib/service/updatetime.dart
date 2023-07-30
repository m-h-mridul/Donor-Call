import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_messaging/firebase_messaging.dart';

import '../model/userinformation.dart';

Future<void> updateTime({String? time}) async {
  await FirebaseFirestore.instance
      .collection("users")
      .doc(UserInformation.userId)
      .update({
    'donate_time': time,
  });
}
