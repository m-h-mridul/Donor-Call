// ignore_for_file: unused_local_variable

import 'package:donercall/helper/media_query.dart';
import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/emergencyRowdata.dart';
import '../model/hosipiatlemergencymodel.dart';
import '../helper/Textstyle.dart';

class HospitalEmergncy extends StatelessWidget {
  static const name = '/HospitalEmergncy';
  const HospitalEmergncy({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ///**user call button which go to moble call */
    Future<void> _makePhoneCall(String phoneNumber) async {
      // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
      // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
      // such as spaces in the input, which would cause `launch` to fail on some
      // platforms.
      final Uri launchUri = Uri(
        scheme: 'tel',
        path: phoneNumber,
      );
      await launch(launchUri.toString());
    }

    return SafeArea(
      child: Scaffold(
        appBar: AppBar(
          elevation: 1,
          backgroundColor: Colors.white,
          leading: IconButton(
            onPressed: () {
              Get.back();
            },
            icon: Icon(Icons.arrow_back_ios_new),
          ),
          title: const Text("Emergency Hospital Name"),
        ),
        body: Padding(
          padding: EdgeInsets.symmetric(
              vertical: MediaQuerypage.safeBlockVertical! * 1,
              horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
          child: ListView.builder(
            itemCount: data.length,
            itemBuilder: (context, index) {
              HospitalEmergency_Model info = data[index];
              return ListTile(
                title: Text(
                  info.hospitalName,
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
                        info.emergencynumber.toString(),
                        style: TextStyleManger.black16,
                      ),
                      Text(
                        '\n' + info.details,
                        style: TextStyleManger.black16,
                      )
                    ]),
                trailing: IconButton(
                  onPressed: () {
                    _makePhoneCall(info.emergencynumber[0]);
                  },
                  icon: Icon(
                    Icons.phone_enabled,
                    size: MediaQuerypage.pixel! * 13,
                  ),
                ),
              );
            },
          ),
        ),
      ),
    );
  }
}
