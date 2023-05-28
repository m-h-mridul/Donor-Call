// ignore_for_file: must_be_immutable
import 'package:donercall/controller/bloodbankControllerr.dart';
import 'package:flutter/material.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/get_state_manager/get_state_manager.dart';
import 'package:get/route_manager.dart';
import '../../helper/media_query.dart';
import '../../model/bloodbank_model.dart';

class BloodBankView extends StatelessWidget {
  static const name = '/BloodBankView';
  BloodBankView({Key? key}) : super(key: key);

  BloodBankContoller bloodBankContoller = Get.find<BloodBankContoller>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
          ),
          child: Obx(
            () => ListView.separated(
                separatorBuilder: (BuildContext context, int index) =>
                    const Divider(
                      height: 2,
                    ),
                itemCount: bloodBankContoller.bloodbanklist.length,
                itemBuilder: (BuildContext context, int index) {
                  BloodBankModel data = bloodBankContoller.bloodbanklist[index];
                  return ListTile(
                    // leading: CircleAvatar(
                    //   backgroundColor: Colors.grey,
                    //   radius: MediaQuerypage.pixel! * 16,
                    //   backgroundImage: const AssetImage(
                    //     Imagename.bloodBankLogo3,
                    //   ),
                    // ),
                    title: Text(data.bloodbankName),
                    subtitle: Text(
                        "${data.bloodbankLocation}\n Phone: ${data.bloodbankphoneNumber}"),
                  );
                }),
          ),
        ),
      ),
    );
  }
}
