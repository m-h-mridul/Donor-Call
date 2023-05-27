import 'package:donercall/helper/appcolor.dart';
import 'package:flutter/material.dart';


class NotificationUi extends StatelessWidget {
  static const name = '/notificatioin';
  const NotificationUi({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: AppColor.red_appcolor,
        ),
        body: Container(),
      ),
    );
  }
}
