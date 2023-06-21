// ignore_for_file: camel_case_types, file_names

import 'package:donercall/helper/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../model/bloodbank_model.dart';
import '../model/userinformation.dart';
import '../helper/callingname.dart';

class Cheaker {
  static const notFind = "Not Find";
}

class BloodBankService {
  Future<bool> addBloodBank(BloodBankModel bdm) async {
    try {
      await FirebaseFirestore.instance.collection(CallingName.bloodbankDB).add({
        CallingName.user_id: UserInformation.userId,
        CallingName.bloodbankName: bdm.bloodbankName,
        CallingName.bloodbankLocation: bdm.bloodbankLocation,
        CallingName.bloodbankphoneNumber: bdm.bloodbankphoneNumber,
        CallingName.bloodbankImage: bdm.bloodbankImage,
        CallingName.bloodbankAddTime: Timestamp.now(),
      }).whenComplete(() {
        showToast(showMessage: 'Add blood bank');
      });
      return true;
    } catch (e) {
      showToast(showMessage: e.toString());
      return false;
    }
  }

  Stream<List<BloodBankModel>> getbloodbanklist() {
    return FirebaseFirestore.instance
        .collection(CallingName.bloodbankDB)
        .snapshots()
        .asyncMap((event) {
      List<BloodBankModel> message = [];
      for (var element in event.docs) {
        var map = element.data();
        message.add(
          BloodBankModel(
            bloodbankName: map[CallingName.bloodbankName] ?? Cheaker.notFind,
            bloodbankLocation:
                map[CallingName.bloodbankLocation] ?? Cheaker.notFind,
            bloodbankphoneNumber:
                map[CallingName.bloodbankphoneNumber] ?? Cheaker.notFind,
            bloodbankImage: map[CallingName.bloodbankImage] ?? Cheaker.notFind,
            adduserid: map[CallingName.user_id]?? Cheaker.notFind,
            // bloodbankaddTime: map[CallingName.bloodbankAddTime].toString()?? Cheaker.notFind,
          ),
        );
      }
      return message;
    });
  }
}
