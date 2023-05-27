// // ignore_for_file: non_constant_identifier_names

// import 'package:donercall/helper/callingname.dart';
// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_storage/firebase_storage.dart';
// import 'package:get/get_rx/get_rx.dart';

// class NotificationController {
//   RxList<SearchViewModel> notificationlist = RxList<SearchViewModel>();
//   RxString dpUrl = ''.obs;
//   RxString database_empty = ''.obs;
//   CollectionReference users =
//       FirebaseFirestore.instance.collection(CallingName.Donate_request);
//   FirebaseStorage storage = FirebaseStorage.instance;

//   NotificationController() {
//     notificationlist.bindStream(notificationfor_bloodrequest());
//   }

//   onit() {
//     notificationlist.bindStream(notificationfor_bloodrequest());
//   }

//   Stream<List<SearchViewModel>> notificationfor_bloodrequest() => users
//           .where(CallingName.bloodgrope,
//               isEqualTo: UserInformation().blood_grope)
//           .snapshots()
//           .asyncMap((event) {
//         List<SearchViewModel> ll = [];

//         if (event.docs.isEmpty) {
//           for (var element in event.docs) {
//             if (element.get(CallingName.user_id) != UserInformation.userId) {
//               ll.add(SearchViewModel(
//                 bloodGrope: element.get(CallingName.bloodgrope),
//                 location: element.get(CallingName.location),
//                 mobile: element.get(CallingName.mobile),
//                 name: element.get(CallingName.name),
//                 user_uid: element.get(CallingName.user_id),
//                 notes: element.get(CallingName.notes),
//               ));
//             }
//           }
//           // return ll;
//           database_empty.value = '';
//         } else {
//           database_empty.value = 'No Notification found for you';
//         }
//         return ll;
//       });
// }
