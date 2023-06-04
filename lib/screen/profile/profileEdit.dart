// ignore_for_file: must_be_immutable, file_names, non_constant_identifier_names, unused_local_variable

import 'dart:io';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/controller/profileEditcontroller.dart';
import 'package:donercall/controller/profileController.dart';
import 'package:donercall/model/userinformation.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:get/instance_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../../controller/mapcontroller.dart';
import '../../helper/Textstyle.dart';

class ProfileEdit extends StatelessWidget {
  ProfileEdit({Key? key}) : super(key: key);
  //**variavle */
  ProfileController controller = ProfileController();
  ProfileEditContoller profileEditContoller = Get.put(ProfileEditContoller());
  @override
  Widget build(BuildContext context) {
    //**variable that edit editor */
    TextEditingController username =
        TextEditingController(text: UserInformation.name);
    TextEditingController donate_time =
        TextEditingController(text: UserInformation.date);
    TextEditingController date2 = TextEditingController(
      text: UserInformation.date,
    );
    List location = UserInformation.location!;
    TextEditingController mobile =
        TextEditingController(text: UserInformation.mobile);

    TextEditingController bloodtye =
        TextEditingController(text: UserInformation.blood_grope);
    MapController mapController = MapController();

    // currentlocation() {
    //   if (mapController.markers.isEmpty) {
    //     mapController.getUserCurrentLocation().then((value) async {
    //       mapController.markers.add(Marker(
    //         markerId: const MarkerId("1"),
    //         position: LatLng(value.latitude, value.longitude),
    //         infoWindow: const InfoWindow(
    //           title: 'My Current Location',
    //         ),
    //       ));

    //       CameraPosition cameraPosition = CameraPosition(
    //         target: LatLng(value.latitude, value.longitude),
    //         zoom: 14,
    //       );
    //       location = [value.latitude, value.longitude];

    //       mapController.kGoogle = cameraPosition;

    //       mapController.gmcDonerController =
    //           await mapController.donercontroller.future;
    //       mapController.gmcDonerController
    //           .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

    //       mapController.gmcambulanceContoller =
    //           await mapController.ambulancecontroller.future;
    //       mapController.gmcambulanceContoller
    //           .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
    //     });
    //   }
    // }

    // currentlocation();
    return SafeArea(child: Scaffold(
      body: ProgressHUD(
        child: Builder(builder: (context) {
          return SingleChildScrollView(
              child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: MediaQuerypage.safeBlockVertical! * 2,
                horizontal: MediaQuerypage.safeBlockHorizontal! * 3),
            child: Column(
              children: [
                //**image get gallery or change and also view previous image that is upload by user */
                InkWell(
                  onTap: () async {
                    await profileEditContoller.imageGetGellery();
                  },
                  child: ClipRRect(
                    borderRadius:
                        BorderRadius.circular(MediaQuerypage.pixel! * 45),
                    child: Obx(
                      () => profileEditContoller.imagefilename.value != ''
                          ? Image.file(
                              File(profileEditContoller.imagefilename.value),
                              fit: BoxFit.fill,
                            )
                          : Image.network(
                              controller.dpUrl.value,
                              width: MediaQuerypage.screenWidth! * 0.45,
                              height: MediaQuerypage.screenHeight! * 0.22,
                              fit: BoxFit.fill,
                              loadingBuilder: (BuildContext context,
                                  Widget child,
                                  ImageChunkEvent? loadingProgress) {
                                if (loadingProgress == null) return child;
                                return CircleAvatar(
                                    radius: MediaQuerypage.pixel! * 40,
                                    child: CircularProgressIndicator(
                                      color: AppColor.red_appcolor,
                                      value:
                                          loadingProgress.expectedTotalBytes !=
                                                  null
                                              ? loadingProgress
                                                      .cumulativeBytesLoaded /
                                                  loadingProgress
                                                      .expectedTotalBytes!
                                                      .toDouble()
                                              : null,
                                    ));
                              },
                              errorBuilder: (BuildContext context,
                                      Object exception,
                                      StackTrace? stackTrace) =>
                                  Image(
                                width: MediaQuerypage.screenWidth,
                                height: MediaQuerypage.screenHeight! / 4,
                                image: const AssetImage(
                                  'assets/user.png',
                                ),
                              ),
                            ),
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.03,
                ),
                //**name ediotr */
                nameEditor(username),
                SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.01,
                ),
                //**location editor */
                Padding(
                  padding: EdgeInsets.symmetric(
                      vertical: MediaQuerypage.safeBlockVertical! * 2,
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
                  child: Container(
                    height: MediaQuerypage.screenHeight! * 0.3,
                    width: MediaQuerypage.screenWidth!,
                    decoration: BoxDecoration(
                      border: Border.all(
                        width: 2,
                        color: AppColor.red_appcolor,
                      ),
                    ),
                    child: GoogleMap(
                      initialCameraPosition: mapController.kGoogle,
                      mapType: MapType.normal,
                      myLocationEnabled: true,
                      compassEnabled: false,
                      mapToolbarEnabled: false,
                      zoomControlsEnabled: false,
                      // onMapCreated: (GoogleMapController controller) {
                      //   // if (!mapController.ambulancecontroller.isCompleted) {
                      //   //   mapController.ambulancecontroller.complete(controller);
                      //   //  }
                      // },
                    ),
                  ),
                ),

                SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.01,
                ),
                //**textfiled mobile */
                TextField(
                  controller: mobile,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:
                          BorderRadius.circular(MediaQuerypage.pixel! * 6),
                    ),
                    filled: true,
                    fillColor: AppColor.grey_textFiled,
                    prefixIcon: Icon(
                      Icons.settings_phone,
                      color: AppColor.red_appcolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.01,
                ),

                TextField(
                  controller: bloodtye,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderSide: BorderSide.none,
                      borderRadius:
                          BorderRadius.circular(MediaQuerypage.pixel! * 6),
                    ),
                    filled: true,
                    fillColor: AppColor.grey_textFiled,
                    prefixIcon: Icon(
                      Icons.bloodtype,
                      color: AppColor.red_appcolor,
                    ),
                  ),
                ),
                SizedBox(
                  height: MediaQuerypage.screenHeight! * 0.01,
                ),

                Padding(
                  padding: EdgeInsets.symmetric(
                    vertical: MediaQuerypage.safeBlockVertical! * 2,
                    horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
                  ),
                  child: DateTimePicker(
                    controller: date2,
                    type: DateTimePickerType.date,
                    dateMask: 'd MMM, yyyy',
                    firstDate: DateTime(2000),
                    lastDate: DateTime(2100),
                    icon: const Icon(Icons.event),
                    dateLabelText: 'Date',
                    timeLabelText: "Hour",
                    selectableDayPredicate: (date) {
                      // Disable weekend days to select from the calendar
                      if (date.weekday == 6 || date.weekday == 7) {
                        return false;
                      }
                      return true;
                    },
                    validator: (val) {
                      if (kDebugMode) {
                        print(val);
                      }
                      return 'Enter last time donate date';
                    },
                  ),
                ),
                //***save button  */
                InkWell(
                  onTap: () async {
                    FocusScope.of(context).unfocus();
                    final progress = ProgressHUD.of(context);
                    progress!.show();
                    NonStaticUserInformation userInfo =
                        NonStaticUserInformation(
                      name: username.text.toString(),
                      mobile: mobile.text.toString(),
                      location: location,
                      blood_grope: bloodtye.text.toString(),
                      date: donate_time.text.toString(),
                    );
                    //**sent data in firebase  */
                    await profileEditContoller.UpdatedataIn_firebase(userInfo);
                    await profileEditContoller
                        .image_sentFirebase(UserInformation.userId);
                    progress.dismiss();
                    Get.back();
                  },
                  child: Container(
                    alignment: Alignment.center,
                    width: MediaQuerypage.screenWidth,
                    height: MediaQuerypage.screenHeight! * 0.055,
                    decoration: BoxDecoration(
                        color: AppColor.red_appcolor,
                        borderRadius:
                            const BorderRadius.all(Radius.circular(20))),
                    child: Text('Save', style: TextStyleManger.whitebold18),
                  ),
                ),
              ],
            ),
          ));
        }),
      ),
    ));
  }

  TextField nameEditor(TextEditingController username) {
    return TextField(
      controller: username,
      decoration: InputDecoration(
        border: OutlineInputBorder(
          borderSide: BorderSide.none,
          borderRadius: BorderRadius.circular(MediaQuerypage.pixel! * 6),
        ),
        filled: true,
        fillColor: AppColor.grey_textFiled,
        prefixIcon: Icon(
          Icons.perm_identity,
          color: AppColor.red_appcolor,
        ),
      ),
    );
  }
}
