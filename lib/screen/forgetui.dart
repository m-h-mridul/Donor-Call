// ignore_for_file: must_be_immutable

import 'package:donercall/helper/appcolor.dart';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';
import '../controller/forgetcontroller.dart';

class ForgetPasswordUI extends StatelessWidget {
  ForgetPasswordUI({Key? key}) : super(key: key);
  static const name = '/forgetui';
  TextEditingController email = TextEditingController();
  ForgetController cn = ForgetController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: AppColor.red_appcolor,
          centerTitle: true,
          title: Text(
            'Reset Password',
            style: TextStyleManger.whitebold18,
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
            vertical: MediaQuerypage.padding!.vertical,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Text(
                'Enter email address for reset password',
                style: TextStyleManger.blackbold20,
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: MediaQuerypage.padding!.vertical,
                  bottom: MediaQuerypage.padding!.vertical * 0.5,
                ),
                child: TextFormField(
                  controller: email,
                  validator: (value) {
                    if (!email.text.toString().contains('@')) {
                      return 'Enter valide email address';
                    }
                    return null;
                  },
                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius:
                            BorderRadius.circular(MediaQuerypage.pixel! * 6),
                      ),
                      filled: true,
                      fillColor: AppColor.grey_textFiled,
                      prefixIcon: Icon(
                        Icons.mail_outline,
                        color: AppColor.red_appcolor,
                      ),
                      hintText: 'Email'),
                ),
              ),
              ElevatedButton(
                onPressed: () async {
                  await cn.onclick(email.text.toString());
                  Get.snackbar(
                    "Cheak Your Email Account",
                    "link will be sent",
                    icon: Icon(
                      Icons.email_outlined,
                      color: Colors.black,
                      size: MediaQuerypage.pixel! * 12,
                    ),
                    snackPosition: SnackPosition.BOTTOM,
                    backgroundColor: Colors.white,
                    borderColor: Colors.black,
                    borderRadius: 10,
                    borderWidth: 2,
                    barBlur: 0,
                  );
                  // Get.offAllNamed(Login.name);
                },
                child: Text(
                  'Reset Password',
                  style: TextStyleManger.whitebold18,
                ),
                style: ElevatedButton.styleFrom(
                    elevation: 1,
                    fixedSize: Size(MediaQuerypage.screenWidth!,
                        MediaQuerypage.screenHeight! * .06),
                    primary: Colors.grey),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
