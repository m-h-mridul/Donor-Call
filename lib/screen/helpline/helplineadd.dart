import 'package:donercall/controller/helplineController.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get.dart';
import '../../helper/Textstyle.dart';
import '../../helper/appcolor.dart';
import '../../helper/media_query.dart';

// ignore: must_be_immutable
class HelplineAdd extends StatelessWidget {
  HelplineAdd({super.key});
  HelpLineController controller = Get.find<HelpLineController>();

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
            'Add HelpLine ',
          ),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical! * 2,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: ProgressHUD(
            backgroundColor: Colors.transparent,
            child: Builder(builder: (context) {
              return Form(
                key: controller.fromkey,
                child: Column(
                  children: [
                    sizebox,
                    // CircleAvatar(
                    //   backgroundColor: Colors.grey,
                    //   radius: MediaQuerypage.pixel! * 16,
                    //   backgroundImage: const AssetImage(
                    //       Imagename.helplineLogo3,
                    //     ) ,
                    //   child: Image(
                    //     image: const AssetImage(
                    //       Imagename.helplineLogo3,
                    //     ),
                    //     width: MediaQuerypage.smallSizeWidth! * 17,
                    //     height: MediaQuerypage.screenHeight,
                    //     fit: BoxFit.scaleDown,
                    //   ),
                    // ),
                    sizebox,
                    helplinename(),
                    sizebox,
                    helplinenumber(),
                    sizebox,
                    helplinebody(),
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
                              bool ans = await controller.addhelpline();
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
                          child: Text(
                            'Cancel',
                            style: TextStyleManger.whitebold18,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              );
            }),
          ),
        ),
      ),
    );
  }

  TextFormField helplinenumber() {
    return TextFormField(
      controller: controller.helplineNumber,
      keyboardType: TextInputType.number,
      textInputAction: TextInputAction.done,
      validator: (_) {
        if (controller.helplineNumber.text.toString().isEmpty) {
          return 'EnterphoneNumber';
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
          hintText: 'phone number'),
    );
  }

  TextFormField helplinebody() {
    return TextFormField(
      controller: controller.helplineLocation,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (_) {
        if (controller.helplineLocation.text.toString().isEmpty) {
          return 'Enter helpline location';
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
          hintText: 'Location'),
    );
  }

  TextFormField helplinename() {
    return TextFormField(
      controller: controller.helplineName,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      validator: (_) {
        if (controller.helplineName.text.toString().isEmpty) {
          return 'Enter helpline name';
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
        hintText: 'Name',
      ),
    );
  }
}
