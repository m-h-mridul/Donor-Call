// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/screen/notification/notfificationUI.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';
import '../../controller/donerController.dart';
import '../../helper/text.dart';
import '../../model/bloodmodel.dart';
import '../profile/profile.dart';

class DonerView extends StatefulWidget {
  const DonerView({Key? key}) : super(key: key);

  @override
  _DonerView createState() => _DonerView();
}

class _DonerView extends State<DonerView> {
  DonerController donerController = DonerController();

  @override
  void initState() {
    donerController.mapController.loadCustomIcon();
    if (donerController.mapController.markersDoner.isEmpty) {
      donerController.mapController
          .getUserCurrentLocation()
          .then((value) async {
        var ownmarker = Marker(
          markerId: const MarkerId("1"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: const InfoWindow(
            title: 'My Current Location',
          ),
        );
        donerController.mapController.markersDoner.add(ownmarker);
        donerController.mapController.markersOwn.add(ownmarker);
        donerController.mapController.markersAmbulance.add(ownmarker);
        CameraPosition cameraPosition = CameraPosition(
          target: LatLng(value.latitude, value.longitude),
          zoom: 14,
        );

        donerController.mapController.kGoogle = cameraPosition;

        donerController.mapController.gmcDonerController =
            await donerController.mapController.donercontroller.future;
        donerController.mapController.gmcDonerController
            .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));

        donerController.mapController.gmcambulanceContoller =
            await donerController.mapController.ambulancecontroller.future;
        donerController.mapController.gmcambulanceContoller
            .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
      });
    }

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuerypage.safeBlockHorizontal! * 4,
                vertical: MediaQuerypage.safeBlockVertical! * 0.5),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                IconButton(
                  onPressed: () {
                    Get.to(() => Profile());
                  },
                  icon: Icon(
                    Icons.account_circle,
                    size: MediaQuerypage.pixel! * 11,
                  ),
                ),
                Text(TextLine.dashboardHeadline,
                    style: TextStyleManger.black18headline),
                IconButton(
                  onPressed: () {
                    Get.to(() => const NotificationUi());
                  },
                  icon: Icon(
                    Icons.notifications_outlined,
                    size: MediaQuerypage.pixel! * 11,
                  ),
                ),
              ],
            ),
          ),
          Expanded(
            child: Obx(
              (() => GoogleMap(
                    initialCameraPosition:
                        donerController.mapController.kGoogle,
                    mapType: MapType.normal,
                    myLocationEnabled: true,
                    compassEnabled: false,
                    mapToolbarEnabled: false,
                    zoomControlsEnabled: false,
                    myLocationButtonEnabled: false,
                    onMapCreated: (GoogleMapController controller) {
                      if (!donerController
                          .mapController.donercontroller.isCompleted) {
                        donerController.mapController.donercontroller
                            .complete(controller);
                      }
                    },
                    markers: Set<Marker>.of(
                        donerController.mapController.markersDoner),
                  )),
            ),
          ),
          SizedBox(
            height: MediaQuerypage.screenHeight! * 0.17,
            width: MediaQuerypage.screenWidth!,
            child: Padding(
              padding: EdgeInsets.symmetric(
                  horizontal: MediaQuerypage.safeBlockHorizontal! * 5,
                  vertical: MediaQuerypage.safeBlockVertical! * 2),
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
                              donerController.bloodgropeselected.value =
                                  element.name;

                              donerController.donerList();
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
            ),
          ),
        ],
      ),
    );
  }
}
