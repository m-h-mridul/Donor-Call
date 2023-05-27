// ignore_for_file: non_constant_identifier_names, file_names

import 'dart:core';

class UserInformation {
  static String userId = '';
  static String? name;
  static String? mobile;
  static List? location;
  static String? blood_grope;
  static String? date;
}

class NonStaticUserInformation {
  String userId = '';
  String? name;
  String? mobile;
  List? location;
  String? blood_grope;
  String? date;

  NonStaticUserInformation({
    this.name,
    this.mobile,
    this.location,
    this.blood_grope,
    this.date,
  });
}
