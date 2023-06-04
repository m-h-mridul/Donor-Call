// ignore_for_file: camel_case_types

import 'package:donercall/helper/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import '../../model/helplinemodel.dart';
import '../../model/userinformation.dart';
import '../callingname.dart';
import 'bloodbankService.dart';

class HelplineService {
  Future<bool> addhelpline(HelpLinemodel bdm) async {
    try {
      await FirebaseFirestore.instance.collection(CallingName.helplineDB).add({
        CallingName.user_id: UserInformation.userId,
        CallingName.helplineName: bdm.name,
        CallingName.helplineLocation: bdm.location,
        CallingName.helplinephoneNumber: bdm.mobile,
        CallingName.helplineImage: bdm.image,
        CallingName.helplineAddTime: bdm.addtime,
      }).whenComplete(() {
        showToast(showMessage: 'Add Helpline');
      });
      return true;
    } catch (e) {
      showToast(showMessage: e.toString());
      return false;
    }
  }

  Stream<List<HelpLinemodel>> gethelplinelist() {
    return FirebaseFirestore.instance
        .collection(CallingName.helplineDB)
        .snapshots()
        .asyncMap((event) {
      List<HelpLinemodel> message = [];
      for (var element in event.docs) {
        var map = element.data();
        message.add(
          HelpLinemodel(
            name: map[CallingName.helplineName] ?? Cheaker.notFind,
            location: map[CallingName.helplineLocation] ?? Cheaker.notFind,
            mobile: map[CallingName.helplinephoneNumber] ?? Cheaker.notFind,
            image: map[CallingName.helplineImage] ?? Cheaker.notFind,
            ureid: map[CallingName.user_id] ?? Cheaker.notFind,
            addtime: "",
            // map[CallingName.helplineAddTime] ?? Cheaker.notFind,
            description: '',
          ),
        );
      }
      return message;
    });
  }
}
