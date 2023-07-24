import 'package:donercall/controller/helplineController.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../controller/bloodbankControllerr.dart';
import '../../helper/Textstyle.dart';
import '../../helper/media_query.dart';
import 'bloodbank/bloodbank.dart';
import 'bloodbank/bloodbankadd.dart';
import 'helpline/helpline.dart';
import 'helpline/helplineadd.dart';


// ignore: must_be_immutable
class Emeregency extends StatelessWidget {
  Emeregency({super.key});

  BloodBankContoller bloodBankContoller = Get.put(BloodBankContoller());
  HelpLineController ambulanceController = Get.put(HelpLineController());

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: AppBar(
            title: Text(
              "Emergency Help",
              style: TextStyleManger.black18,
            ),
            backgroundColor: Colors.white,
            elevation: 0,
          ),
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              children: [
                TabBar(
                  indicator: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                        10), // Adjust the border radius as needed
                    color: Colors.blue, // Indicator color
                  ),
                  tabs: [
                    InkWell(
                        onTap: () {
                          Get.to(() => BloodBankAdd());
                        },
                        child: bloodBank()),
                    InkWell(
                        onTap: () {
                          Get.to(() => HelplineAdd());
                        },
                        child: helpLine()),
                  ],
                ),
                SizedBox(width: MediaQuerypage.smallSizeHeight! * 4),
                Expanded(
                  child: TabBarView(
                    children: [
                      BloodBankView(),
                      Helpline(),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Container bloodBank() {
    return Container(
      width: MediaQuerypage.screenWidth! * .45,
      height: MediaQuerypage.screenHeight! * 0.08,
      decoration: BoxDecoration(
        color: Colors.blue,
        borderRadius: BorderRadius.circular(10), // Set the border radius
      ),
      child: const Center(
        child: Text(
          'Blood Bank +',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}

Container helpLine() {
  return Container(
    width: MediaQuerypage.screenWidth! * .45,
    height: MediaQuerypage.screenHeight! * .08,
    decoration: BoxDecoration(
      color: Colors.blue,
      borderRadius: BorderRadius.circular(10), // Set the border radius
    ),
    child: const Center(
      child: Text(
        'Help Line +',
        style: TextStyle(
          fontSize: 20,
          color: Colors.white,
        ),
      ),
    ),
  );
}
