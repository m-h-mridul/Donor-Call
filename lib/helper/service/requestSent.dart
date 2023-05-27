import 'package:donercall/model/requestmodel.dart';
import 'package:donercall/helper/callingname.dart';
import 'package:donercall/helper/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import '../../model/userinformation.dart';

class DonerRequestsearch {
  Future<bool> requestSent(RequestModel m) async {
    try {
      await FirebaseFirestore.instance
          .collection(CallingName.Donate_request)
          .add({
        CallingName.bloodgrope: m.blodtypes!.toUpperCase(),
        CallingName.location: m.location,
        CallingName.user_id: UserInformation.userId,
        CallingName.mobile: m.mobile,
        CallingName.notes: m.notes,
        CallingName.hospital_name: m.hospital,
        CallingName.date: m.date,
        CallingName.time: DateFormat("hh:mm:ss a").format(DateTime.now()),
      }).whenComplete(() {
        showToast(showMessage: 'Done');
      });
      // **increase user request
      await FirebaseFirestore.instance
          .collection('users')
          .doc(UserInformation.userId)
          .update({CallingName.request: FieldValue.increment(1)});
      return true;
    } on FirebaseException catch (e) {
      showToast(showMessage: e.toString());
    } catch (e) {
      showToast(showMessage: e.toString());
    }
    return false;
  }
}
