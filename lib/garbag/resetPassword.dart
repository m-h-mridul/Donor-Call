// ignore_for_file: prefer_const_constructors, file_names

import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/screen/registation/Otp_ui.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';

import '../helper/media_query.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({Key? key}) : super(key: key);
  static const name = '/ResetPassword';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Padding(
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
          vertical: MediaQuerypage.safeBlockVertical! * 2),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          TextField(
            decoration: InputDecoration(
                border: OutlineInputBorder(
                  borderSide: BorderSide.none,
                ),
                filled: true,
                fillColor: AppColor.grey_textFiled,
                prefixIcon: Icon(
                  Icons.mail_outline,
                  color: AppColor.red_appcolor,
                ),
                hintText: 'Email'),
          ),
          SizedBox(
            height: MediaQuerypage.screenHeight! * 0.02,
          ),
          Text(
            'Your password reset will be send in your registered email address.',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: MediaQuerypage.fontsize! * 16, color: Colors.grey),
          ),
          SizedBox(
            height: MediaQuerypage.screenHeight! * 0.03,
          ),
          InkWell(
            onTap: () {
              Get.toNamed(Otpui.name);
            },
            child: Container(
              alignment: Alignment.center,
              width: MediaQuerypage.screenWidth,
              height: MediaQuerypage.screenHeight! * 0.06,
              decoration: BoxDecoration(
                  color: AppColor.red_appcolor,
                  borderRadius: BorderRadius.all(Radius.circular(20))),
              child: Text('Sent', style: TextStyleManger.whitebold18),
            ),
          ),
        ],
      ),
    )));
  }
}
