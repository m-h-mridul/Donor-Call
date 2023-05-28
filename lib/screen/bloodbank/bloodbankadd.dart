// ignore_for_file: must_be_immutable

import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/route_manager.dart';
import '../../controller/bloodbankControllerr.dart';
import '../../helper/Textstyle.dart';
import '../../helper/appcolor.dart';

class BloodBankAdd extends StatelessWidget {
  static const name = '/bloodbackadd';
  BloodBankAdd({Key? key}) : super(key: key);
  BloodBankContoller controller = BloodBankContoller().to();

  @override
  Widget build(BuildContext context) {
    Widget sizebox = SizedBox(
      height: MediaQuerypage.smallSizeHeight! * 2,
    );
    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: const Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text(
            'Add Blood Bank  ',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical! * 2,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: ProgressHUD(
            backgroundColor: Colors.transparent,
            child: Builder(
              builder: (context) {
                return Form(
                  key: controller.fromkey,
                  child: Column(
                    children: [
                      sizebox,
                      // CircleAvatar(
                      //   backgroundColor: Colors.grey,
                      //   radius: MediaQuerypage.pixel! * 16,
                      //   backgroundImage: const AssetImage(
                      //       Imagename.bloodBankLogo3,
                      //     ) ,
                      //   child: Image(
                      //     image: const AssetImage(
                      //       Imagename.bloodBankLogo3,
                      //     ),
                      //     width: MediaQuerypage.smallSizeWidth! * 17,
                      //     height: MediaQuerypage.screenHeight,
                      //     fit: BoxFit.scaleDown,
                      //   ),
                      // ),
                      sizebox,
                      bloodbankname(),
                      sizebox,
                      bloodbanknumber(),
                      sizebox,
                      bloodbankbody(),
                      sizebox,
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          ElevatedButton(
                            onPressed: () async {
                              if (controller.fromkey.currentState!.validate()) {
                                FocusScope.of(context).unfocus();
                                final progress = ProgressHUD.of(context);
                                progress!.show();
                                bool ans = await controller.addBloodBank();
                                if (ans) {
                                  progress.dismiss();
                                  controller.clearTextField();
                                  Get.back();
                                } else {
                                  progress.dismiss();
                                  Get.back();
                                }
                              }
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColor.black,
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuerypage.safeBlockHorizontal! * 5,
                                  vertical:
                                      MediaQuerypage.safeBlockVertical! * 1.1),
                            ),
                            child: Text(
                              'Save',
                              style: TextStyleManger.whitebold18,
                            ),
                          ),
                          ElevatedButton(
                            child: Text(
                              'Cancel',
                              style: TextStyleManger.whitebold18,
                            ),
                            onPressed: () {
                              Get.back();
                            },
                            style: ElevatedButton.styleFrom(
                              primary: AppColor.bluegray,
                              padding: EdgeInsets.symmetric(
                                  horizontal:
                                      MediaQuerypage.safeBlockHorizontal! * 5,
                                  vertical:
                                      MediaQuerypage.safeBlockVertical! * 1.1),
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }
            ),
          ),
        ),
      ),
    );
  }

  TextFormField bloodbanknumber() {
    return TextFormField(
      controller: controller.bloodbankNumber,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      // validator: (_) {
      //   if (location.text.toString().isEmpty) {
      //     return 'Blood donation ';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          ),
          filled: true,
          fillColor: AppColor.grey_textFiled,
          hintText: 'phone number'),
    );
  }

  TextFormField bloodbankbody() {
    return TextFormField(
      controller: controller.bloodbankLocation,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      // validator: (_) {
      //   if (location.text.toString().isEmpty) {
      //     return 'Blood donation ';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
          ),
          filled: true,
          fillColor: AppColor.grey_textFiled,
          hintText: 'Address'),
    );
  }

  TextFormField bloodbankname() {
    return TextFormField(
      controller: controller.bloodbankName,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      // validator: (_) {
      //   if (location.text.toString().isEmpty) {
      //     return 'Blood donation ';
      //   }
      //   return null;
      // },
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
        ),
        filled: true,
        fillColor: AppColor.grey_textFiled,
        hintText: 'Blood Bank Name',
      ),
    );
  }
}