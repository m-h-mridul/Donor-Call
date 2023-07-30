// ignore_for_file: must_be_immutable

import 'dart:async';

import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/controller/profileController.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../helper/Textstyle.dart';
import '../../model/userinformation.dart';

class Profile extends StatefulWidget {
  Profile({Key? key}) : super(key: key);

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {
  ProfileController profilecontroller = ProfileController();

  RxBool isSwitched = false.obs;

  @override
  void initState() {
    //**call method for get information in api  */
    profilecontroller.getUserInformatio();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    profilecontroller.ProfileCecontroller = Completer();
  }

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        SystemChrome.setSystemUIOverlayStyle(
          const SystemUiOverlayStyle(
            statusBarColor: Colors.white,
            statusBarIconBrightness: Brightness.dark,
          ),
        );
        return true; // Allow the pop operation
      },
      child: SafeArea(
        child: Scaffold(
          appBar: AppBar(
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios,
                // size: 16,
                color: Colors.black,
              ),
              onPressed: () {
                Get.back();
              },
            ),
            title: Text(
              'Profile',
              style: TextStyleManger.black18headline,
            ),
            centerTitle: true,
            backgroundColor: Colors.white,
            elevation: 1,
          ),
          backgroundColor: Colors.white,
          body: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuerypage.safeBlockHorizontal! * 2,
                vertical: MediaQuerypage.safeBlockVertical!),
            child: Obx(
              () => Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.symmetric(
                                vertical:
                                    MediaQuerypage.safeBlockVertical! * 0.5),
                            child: Text(
                              !profilecontroller.dataloadsuccesfull.value
                                  ? 'loading'
                                  : UserInformation.name.toString(),
                              // textAlign: TextAlign.center,
                              style: TextStyleManger.black22,
                            ),
                          ),
                          Text(
                            !profilecontroller.dataloadsuccesfull.value
                                ? 'loading'
                                : UserInformation.date.toString(),
                            style: TextStyleManger.black18,
                          ),
                        ],
                      ),
                      SizedBox.square(
                        dimension: MediaQuerypage.smallSizeHeight! * 5,
                      ),
                      Container(
                        width: MediaQuerypage.screenWidth! * .15,
                        height: MediaQuerypage.screenHeight! * .1,
                        decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            border: Border.all(
                              width: 1,
                              color: AppColor.red_appcolor,
                            )),
                        child: Center(
                          child: Text(
                            !profilecontroller.dataloadsuccesfull.value
                                ? '-'
                                : UserInformation.blood_grope.toString(),
                            style: TextStyleManger.red22,
                          ),
                        ),
                      ),
                    ],
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      children: [
                        Text("Phone Number:", style: TextStyleManger.black16),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        Text(UserInformation.mobile.toString(),
                            style: TextStyleManger.black18),
                      ],
                    ),
                  ),
                  const Divider(),
                  Padding(
                    padding: EdgeInsets.symmetric(
                        horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        Row(
                          children: [
                            Text("Next late for doantion:",
                                style: TextStyleManger.black16),
                            SizedBox.square(
                              dimension: MediaQuerypage.smallSizeHeight! * 1,
                            ),
                            Text(
                              !profilecontroller.dataloadsuccesfull.value
                                  ? 'loading'
                                  : profilecontroller.addDaysToDate(
                                      UserInformation.date.toString(), 90),
                              style: TextStyleManger.black18,
                            ),
                          ],
                        ),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        const Divider(),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        Text("Home location", style: TextStyleManger.black16),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        Container(
                          height: MediaQuerypage.screenHeight! * 0.3,
                          width: MediaQuerypage.screenWidth!,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: Colors.grey,
                            ),
                          ),
                          child: GoogleMap(
                            initialCameraPosition:
                                profilecontroller.cameraPosition.value,
                            mapType: MapType.normal,
                            myLocationEnabled: true,
                            compassEnabled: false,
                            mapToolbarEnabled: false,
                            zoomControlsEnabled: false,
                            myLocationButtonEnabled: false,
                            markers: Set<Marker>.of(profilecontroller.marker),
                            onMapCreated: (GoogleMapController controller) {
                              if (!profilecontroller
                                  .ProfileCecontroller.isCompleted) {
                                profilecontroller.ProfileCecontroller.complete(
                                    controller);
                              }
                            },
                          ),
                        ),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                        ListTile(
                          leading: Icon(
                            Icons.edit_outlined,
                            color: AppColor.red_appcolor,
                          ),
                          title: const Text('Profile Edit'),
                          onTap: () {
                            // Get.to(() => ProfileEdit());
                          },
                        ),
                        SizedBox.square(
                          dimension: MediaQuerypage.smallSizeHeight! * 1,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
