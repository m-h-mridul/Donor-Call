// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, file_names

import 'package:donercall/controller/registation_controller.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get.dart';
import 'package:sms_autofill/sms_autofill.dart';
import '../../helper/Textstyle.dart';

class Otpui extends StatefulWidget {
  Otpui({Key? key}) : super(key: key);
  static const name = 'Otpui';

  @override
  State<Otpui> createState() => _OtpuiState();
}

class _OtpuiState extends State<Otpui> with CodeAutoFill {
  String? otpCode;
  String? appSignature;

  Registationcontroller registationcontroller =
      Get.find<Registationcontroller>();
  RxBool button = true.obs;

  @override
  void codeUpdated() {
    setState(() {
      otpCode = code!;
    });
  }

  @override
  void initState() {
    super.initState();
    listenthecode();
  }

  listenthecode() async {
    await SmsAutoFill().listenForCode();
  }

  @override
  void dispose() {
    SmsAutoFill().unregisterListener();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
    leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            // size: 16,
            color: Colors.white,
          ),
          onPressed: () {
            Get.back();
          },
        ),
    title: Text(
      'Otp Code ',
      style: TextStyleManger.whitebold18,
    ),
    centerTitle: true,
    backgroundColor: AppColor.red_appcolor,
    elevation: 0,
      ),
      body: ProgressHUD(
    // borderColor: Colors.orange,
    // backgroundColor: Colors.blue.shade300,
    child: Builder(builder: (context) {
      return Padding(
        padding: EdgeInsets.symmetric(
            horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
            vertical: MediaQuerypage.safeBlockVertical! * 2),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            Center(
              child: Text(
                'Provided phone number',
                style: TextStyleManger.black18headline,
              ),
            ),
            Center(
              child: Text(
                registationcontroller.userInfo.mobile!,
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Text(
                'Enter Your Verification Code',
                style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
              ),
            ),
            Center(
              child: Obx(
                (() => registationcontroller.secondsRemaining.value != 0
                    ? Text(
                        'Timer: ${registationcontroller.secondsRemaining.value}',
                        style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.bold),
                      )
                    : TextButton(
                        onPressed: () {
                          registationcontroller.register_User();
                          registationcontroller.secondsRemaining.value = 60;
                        },
                        child: Text('Resent otp '),
                      )),
              ),
            ),
            SizedBox(
              height: MediaQuerypage.screenHeight! * 0.01,
            ),
            Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 10,
                  vertical: MediaQuerypage.safeBlockVertical! * 3),
              child: PinFieldAutoFill(
                decoration: BoxLooseDecoration(
                    gapSpace: MediaQuerypage.smallSizeWidth! * 2,
                    strokeColorBuilder:
                        PinListenColorBuilder(Colors.grey, Colors.grey),
                    bgColorBuilder: PinListenColorBuilder(
                        Color(0xFFECF2FE), Color(0xFFECF2FE))),
                currentCode: otpCode,
                codeLength: 6,
                onCodeSubmitted: (code) {
                  if (code.length == 6) {
                    otpCode = code;
                    registationcontroller.smsCode.value = code;
                  }
                },
                onCodeChanged: (code) {
                  if (code!.length == 6) {
                    otpCode = code;
                    registationcontroller.smsCode.value = code;
                    // showToast(showMessage: "otp complate ${code}");
                    // registationcontroller.otpSent();
                  }
                },
              ),
            ),
            InkWell(
              onTap: () async {
                if (button.value) {
                  final progress = ProgressHUD.of(context);
                  progress?.show();
                  button.value = false;
                  await registationcontroller.otpSent(progress);
                  progress!.dismiss();
                }
              },
              child: Container(
                alignment: Alignment.center,
                width: MediaQuerypage.screenWidth,
                height: MediaQuerypage.screenHeight! * 0.06,
                decoration: BoxDecoration(
                    color: AppColor.red_appcolor,
                    borderRadius: BorderRadius.all(Radius.circular(20))),
                child: Text('Verify', style: TextStyleManger.whitebold18),
              ),
            ),
          ],
        ),
      );
    }),
      ),
    );
  }
}
