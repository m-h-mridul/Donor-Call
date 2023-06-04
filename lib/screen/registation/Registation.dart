// ignore_for_file: prefer_const_constructors, must_be_immutable, non_constant_identifier_names, unused_local_variable, file_names

import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/controller/registation_controller.dart';
import 'package:donercall/helper/validation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'Otp_ui.dart';

class Registation extends StatelessWidget {
  Registation({Key? key}) : super(key: key);
  static const name = '/registation';
  //**
  //**variable */
  // */
  Registationcontroller registation_controller =
      Get.put(Registationcontroller());
  RxString bloodgropeselected = 'AB+'.obs;
// **

  TextEditingController phone = TextEditingController();
  final fromkey = GlobalKey<FormState>();
  RxBool button = true.obs;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(
      SystemUiOverlayStyle(
        statusBarColor: Colors.white,
        statusBarIconBrightness: Brightness.dark,
      ),
    );
    return SafeArea(
        child: Scaffold(
            body: SingleChildScrollView(
      child: Form(
        key: fromkey,
        child: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
              vertical: MediaQuerypage.safeBlockVertical! * 4),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Image(
                image: AssetImage('assets/Logo.png'),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuerypage.safeBlockHorizontal! * 10,
                    vertical: MediaQuerypage.safeBlockHorizontal! * 5),
                child: const Image(
                  image: AssetImage('assets/home2.png'),
                ),
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                    horizontal: MediaQuerypage.safeBlockHorizontal! * 10,
                    vertical: MediaQuerypage.safeBlockHorizontal! * 5),
                child: Text(
                  'You can donate for ones in need and\n request blood if you need.',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                      fontSize: MediaQuerypage.fontsize! * 15,
                      color: AppColor.grey),
                ),
              ),
              userphoneFiled(),
              Padding(
                padding: EdgeInsets.symmetric(
                    vertical: MediaQuerypage.safeBlockVertical! * 3),
                child: InkWell(
                  onTap: () async {
                    if (fromkey.currentState!.validate()) {
                      registation_controller.userInfo.mobile =
                          phone.text.trim().toString();

                      registation_controller.register_User();
                      Get.to(() => Otpui());
                    } else {
                      Validation.emailvalidation('');
                      Validation.passwordvalidation('');
                    }
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuerypage.screenWidth,
                    height: MediaQuerypage.screenHeight! * 0.055,
                    decoration: BoxDecoration(
                        color: AppColor.red_appcolor,
                        borderRadius: BorderRadius.all(Radius.circular(20))),
                    child: Text('Next', style: TextStyleManger.whitebold18),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    )));
  }

  TextFormField userphoneFiled() {
    return TextFormField(
      controller: phone,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.next,
      validator: (_) {
        if (phone.text.toString().isEmpty) {
          return 'Enter Mobile Number';
        }
        return null;
      },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          ),
          filled: true,
          fillColor: AppColor.grey_textFiled,
          prefixIcon: Icon(
            Icons.call,
            color: AppColor.red_appcolor,
          ),
          hintText: 'Phone'),
    );
  }
}
