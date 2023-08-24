// ignore_for_file: must_be_immutable, unused_element, sized_box_for_whitespace, prefer_const_constructors

import 'dart:async';

import 'package:date_time_picker/date_time_picker.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/controller/profileController.dart';
import 'package:donercall/service/updatetime.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get_rx/get_rx.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/route_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
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
  TextEditingController updateDate = TextEditingController();

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
    var space = SizedBox.square(
      dimension: MediaQuerypage.smallSizeHeight! * 1,
    );
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
      child: Scaffold(
        appBar: appbar(),
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(
              horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
              vertical: MediaQuerypage.safeBlockVertical!),
          child: Obx(
            () => Column(
              crossAxisAlignment: CrossAxisAlignment.start,
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
                            style: TextStyleManger.black22,
                          ),
                        ),
                        Text(
                          !profilecontroller.dataloadsuccesfull.value
                              ? 'loading'
                              : DateFormat('dd/MM/yyyy').format(DateTime.parse(
                                  UserInformation.date.toString())),
                          style: TextStyleManger.black18,
                        ),
                      ],
                    ),
                    space,
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
                Row(
                  children: [
                    Text("Phone Number:", style: TextStyleManger.black16),
                    SizedBox.square(
                      dimension: MediaQuerypage.smallSizeHeight! * 1,
                    ),
                    Text(UserInformation.mobile.toString(),
                        style: TextStyleManger.black18),
                  ],
                ),
                const Divider(),
                Row(
                  children: [
                    Text("Next late for doantion : ",
                        style: TextStyleManger.black16),
                    Text(
                      !profilecontroller.dataloadsuccesfull.value
                          ? 'loading'
                          : DateFormat('dd/MM/yyyy').format(DateTime.parse(
                              profilecontroller.addDaysToDate(
                                  UserInformation.date.toString(), 90))),
                      style: TextStyleManger.black18,
                    ),
                    const Spacer(),
                    TextButton(
                        onPressed: () {
                          if (profilecontroller.dataloadsuccesfull.value) {
                            updateDate = TextEditingController(
                                text: UserInformation.date.toString());
                            _showBottomSheet(context);
                          }
                        },
                        child: Text(
                          'update',
                          style: TextStyle(
                              fontSize: MediaQuerypage.fontsize! * 18),
                        ))
                  ],
                ),
                const Divider(),
                Text("Home location", style: TextStyleManger.black16),
                space,
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
                      if (!profilecontroller.ProfileCecontroller.isCompleted) {
                        profilecontroller.ProfileCecontroller.complete(
                            controller);
                      }
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  AppBar appbar() {
    return AppBar(
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
    );
  }

  void _showBottomSheet(BuildContext context) {
    showModalBottomSheet(
      context: context,
      builder: (BuildContext context) {
        return Row(
          children: [
            Expanded(child: donationtimePicker()),
            IconButton(
              onPressed: () async {
                if (UserInformation.date.toString() != updateDate.text) {
                  await updateTime(time: updateDate.text);
                  UserInformation.date = updateDate.text;
                  Get.back();
                }
              },
              icon: Icon(Icons.send),
            )
          ],
        );
      },
    );
  }

  Padding donationtimePicker() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
      ),
      child: DateTimePicker(
        initialDate: DateTime.parse(UserInformation.date.toString()),
        controller: updateDate,
        type: DateTimePickerType.date,
        dateMask: 'dd MM, yyyy',
        firstDate: DateTime(2020),
        lastDate: DateTime(2100),
        icon: const Icon(Icons.event),
        dateLabelText: 'Date',
        timeLabelText: "Hour",
        validator: (val) {
          return val!.isEmpty ? 'Enter last time donate date' : null;
        },
      ),
    );
  }
}
