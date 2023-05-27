import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

showToast({String? showMessage}) {
  Fluttertoast.showToast(
    msg: showMessage!,
    fontSize: MediaQuerypage.fontsize! * 15,
    backgroundColor: Colors.grey,
  );
}

errorShowToast({String? message}) {
  Fluttertoast.showToast(
    msg: message!,
    fontSize: MediaQuerypage.fontsize! * 15,
    textColor: Colors.red,
  );
}
