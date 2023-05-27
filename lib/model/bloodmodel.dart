import 'package:get/get.dart';

class CoustomModel {
  RxBool ans = false.obs;
  String name = '';
  CoustomModel({
    this.name = '',
    required this.ans,
  });
}

// RxList<CoustomModel> bloodgrope = [
//   CoustomModel(ans: true, name: "AB+"),
//   CoustomModel(ans: false, name: "A+"),
//   CoustomModel(ans: false, name: "B+"),
//   CoustomModel(ans: false, name: "O+"),
//   CoustomModel(ans: false, name: "AB-"),
//   CoustomModel(ans: false, name: "A-"),
//   CoustomModel(ans: false, name: "B-"),
//   CoustomModel(ans: false, name: "O-"),
// ].obs;

List<CoustomModel> bloodgrope = [
  CoustomModel(ans: false.obs, name: "AB+"),
  CoustomModel(ans: false.obs, name: "A+"),
  CoustomModel(ans: false.obs, name: "B+"),
  CoustomModel(ans: false.obs, name: "O+"),
  CoustomModel(ans: false.obs, name: "AB-"),
  CoustomModel(ans: false.obs, name: "A-"),
  CoustomModel(ans: false.obs, name: "B-"),
  CoustomModel(ans: false.obs, name: "O-"),
];

///**here both list are same  and workng are also same */
////**cannot change becouse of time kill */
RxList<CoustomModel> gender = ([
  CoustomModel(ans: false.obs, name: "Female"),
  CoustomModel(ans: false.obs, name: "Male"),
]).obs;
