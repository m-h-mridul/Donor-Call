import 'dart:async';
import 'package:donercall/controller/mapcontroller.dart';
import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';
import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/helper/validation.dart';
import 'package:donercall/model/bloodmodel.dart';
import 'package:date_time_picker/date_time_picker.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_progress_hud/flutter_progress_hud.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:get/route_manager.dart';
import 'package:get/state_manager.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import '../../controller/registation_controller.dart';
import '../../service/getuserCurrentlocation.dart';
import '../home.dart';

class UserInfromationGet extends StatefulWidget {
  const UserInfromationGet({Key? key}) : super(key: key);
  static const name = '/userinformationget';

  @override
  State<UserInfromationGet> createState() => _UserInfromationGetState();
}

class _UserInfromationGetState extends State<UserInfromationGet> {
  //**
  Registationcontroller registationController =
      Get.find<Registationcontroller>();
  

// **

  MapController mapController = MapController();
  final fromkey = GlobalKey<FormState>();

  @override
  void initState() {
    if (mapController.markersRegistation.isEmpty) {
      Future.delayed(const Duration(seconds: 3), () async {
        var value = await getUserCurrentLocation();
        CameraPosition cameraPosition = CameraPosition(
          target: LatLng(value.latitude, value.longitude),
          zoom: 14,
        );
        registationController.location = [value.latitude, value.longitude];

        mapController.kGoogle.value = cameraPosition;

        Marker ownmarker = Marker(
          markerId: const MarkerId("1"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: const InfoWindow(
            title: 'My Current Location',
          ),
        );
        mapController.kGoogle.value = cameraPosition;
        mapController.markersOwn.value = ownmarker;
        mapController.markersDoner.add(ownmarker);
        mapController.markersAmbulance.add(ownmarker);

        mapController.gmcregistationContoller =
            await mapController.registationcecontroller.future;
        mapController.gmcregistationContoller!
            .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      });

      super.initState();
    }
  }

  @override
  void dispose() {
    mapController.registationcecontroller = Completer();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: ProgressHUD(
          child: Builder(builder: (context) {
            return SingleChildScrollView(
              child: Form(
                key: fromkey,
                child: Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
                      vertical: MediaQuerypage.safeBlockVertical! * 1),
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical! * 2,
                            horizontal:
                                MediaQuerypage.safeBlockHorizontal! * 2),
                        child: Container(
                          height: MediaQuerypage.screenHeight! * 0.4,
                          width: MediaQuerypage.screenWidth!,
                          decoration: BoxDecoration(
                            border: Border.all(
                              width: 2,
                              color: AppColor.red_appcolor,
                            ),
                          ),
                          child: Obx(
                            () => GoogleMap(
                              initialCameraPosition:
                                  mapController.kGoogle.value,
                              mapType: MapType.normal,
                              myLocationEnabled: true,
                              compassEnabled: false,
                              mapToolbarEnabled: false,
                              zoomControlsEnabled: false,
                              myLocationButtonEnabled: false,
                              onMapCreated: (GoogleMapController controller) {
                                if (!mapController
                                    .registationcecontroller.isCompleted) {
                                  mapController.registationcecontroller
                                      .complete(controller);
                                }
                              },
                            ),
                          ),
                        ),
                      ),
                      usrinfoCollection(),
                      Padding(
                        padding: EdgeInsets.symmetric(
                            vertical: MediaQuerypage.safeBlockVertical! * 3),
                        child: InkWell(
                          onTap: () async {
                            FocusScope.of(context).unfocus();
                            final progress = ProgressHUD.of(context);
                            if (fromkey.currentState!.validate()) {
                              progress!.show();

                              registationController.userInfo.name =
                                  registationController.username.text
                                      .toString();
                              registationController.userInfo.location =
                                  registationController.location;
                              registationController.userInfo.blood_grope =
                                  registationController
                                      .bloodgropeselected.value;
                              registationController.userInfo.date =
                                  registationController.donate_time.text
                                      .toString();

                              await registationController.userDataSent();

                              if (fromkey.currentState!.validate()) {
                                progress.dismiss();
                                Get.offAllNamed(Home.name);
                              } else {
                                //**when error find make error value nulll
                                //*** */ so that user cannot find error for update the error textfield */
                                Validation.emailvalidation('');
                                Validation.passwordvalidation('');
                                progress.dismiss();
                              }
                            }
                          },
                          child: Container(
                            alignment: Alignment.center,
                            width: MediaQuerypage.screenWidth,
                            height: MediaQuerypage.screenHeight! * 0.055,
                            decoration: BoxDecoration(
                                color: AppColor.red_appcolor,
                                borderRadius: const BorderRadius.all(
                                    Radius.circular(20))),
                            child: Text('Save',
                                style: TextStyleManger.whitebold18),
                          ),
                        ),
                      ),
                      SizedBox(
                        height: MediaQuerypage.screenHeight! * 0.02,
                      ),
                    ],
                  ),
                ),
              ),
            );
          }),
        ),
      ),
    );
  }

  usrinfoCollection() {
    var sizebox = SizedBox(
      height: MediaQuerypage.smallSizeHeight! * 2,
    );
    return Column(
      children: [
        userNamefield(),
        sizebox,
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.02,
        ),
        bloodgropeSelcettion(),
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.02,
        ),
        const Text('Last Time Donate Date'),
        donationtimePicker(),
        SizedBox(
          height: MediaQuerypage.screenHeight! * 0.02,
        ),
      ],
    );
  }

  Padding donationtimePicker() {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
      ),
      child: DateTimePicker(
        controller: registationController.donate_time,
        type: DateTimePickerType.date,
        dateMask: 'dd MM, yyyy',
        firstDate: DateTime(2020),
        lastDate: DateTime(2100),
        icon: const Icon(Icons.event),
        dateLabelText: 'Date',
        timeLabelText: "Hour",
        validator: (val) {
          if (kDebugMode) {
            print(val);
          }
          return val!.isEmpty ? 'Enter last time donate date' : null;
        },
      ),
    );
  }

  Padding bloodgropeSelcettion() {
    return Padding(
      padding: EdgeInsets.only(
        top: MediaQuerypage.screenHeight! * 0.02,
      ),
      child: Obx(
        () => Wrap(
          spacing: 10.0,
          runSpacing: 10,
          children: bloodgrope
              .map((element) => InkWell(
                    onTap: () {
                      for (var e in bloodgrope) {
                        e.ans.value = false;
                      }
                      element.ans.value = true;
                      registationController.bloodgropeselected.value =
                          element.name;
                    },
                    child: Container(
                      width: MediaQuerypage.screenWidth! * 0.2,
                      height: MediaQuerypage.screenHeight! * 0.06,
                      alignment: Alignment.center,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                          color: element.ans.value
                              ? AppColor.red_appcolor
                              : AppColor.white,
                          border: Border.all(
                            color: element.ans.value
                                ? AppColor.white
                                : AppColor.red_appcolor,
                          ),
                          borderRadius: BorderRadius.circular(5)),
                      child: Text(
                        element.name,
                        style: element.ans.value
                            ? TextStyleManger.whitebold16
                            : TextStyleManger.blackbold16,
                      ),
                    ),
                  ))
              .toList(),
        ),
      ),
    );
  }

  TextFormField userNamefield() {
    return TextFormField(
      controller: registationController.username,
      keyboardType: TextInputType.text,
      textInputAction: TextInputAction.next,
      textCapitalization: TextCapitalization.words,
      validator: (_) {
        if (registationController.username.text.toString().isEmpty) {
          return 'Enter Name';
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
          prefixIcon: Icon(
            Icons.perm_identity,
            color: AppColor.red_appcolor,
          ),
          hintText: 'Name'),
    );
  }
}
