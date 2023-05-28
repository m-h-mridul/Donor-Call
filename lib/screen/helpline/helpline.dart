// ignore_for_file: unused_local_variable

import 'package:donercall/controller/helplineController.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';
import '../../model/emergencyRowdata.dart';
import '../../model/helplinemodel.dart';
import '../../model/hosipiatlemergencymodel.dart';
import '../../helper/Textstyle.dart';

class Helpline extends StatelessWidget {
  static const name = '/HospitalEmergncy';
  Helpline({Key? key}) : super(key: key);

  HelpLineController controller = Get.find<HelpLineController>();

  @override
  Widget build(BuildContext context) {
  
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical! * 1,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: Obx(
            (() => ListView.builder(
                  itemCount: controller.helplinelist.length,
                  itemBuilder: (context, index) {
                    HelpLinemodel info = controller.helplinelist[index];
                    return ListTile(
                      title: Text(
                        info.name,
                        style: TextStyleManger.black18,
                      ),
                      isThreeLine: true,
                      subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              info.location,
                              style: TextStyleManger.black16,
                            ),
                            Text(
                              info.mobile.toString(),
                              style: TextStyleManger.black16,
                            ),
                           
                          ]),
                    );
                  },
                )),
          ),
        ),
      ),
    );
  }
}
