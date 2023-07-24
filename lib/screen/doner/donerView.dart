// ignore_for_file: library_private_types_in_public_api, file_names

import 'package:donercall/helper/appcolor.dart';
import 'package:donercall/screen/notification/notfificationUI.dart';
import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:donercall/helper/Textstyle.dart';
import 'package:donercall/helper/media_query.dart';
import '../../controller/donerController.dart';
import '../../controller/mapcontroller.dart';
import '../../helper/text.dart';
import '../../model/bloodmodel.dart';
import '../../service/getuserCurrentlocation.dart';
import '../profile/profile.dart';

class DonerView extends StatefulWidget {
  const DonerView({Key? key}) : super(key: key);

  @override
  _DonerView createState() => _DonerView();
}

class _DonerView extends State<DonerView> {
  DonerController donerController = DonerController();
  MapController mapController = MapController();
  Rx<bool> task = false.obs;

  @override
  void initState() {
    super.initState();
    mapController.loadCustomIcon();

    if (mapController.markersDoner.isEmpty) {
      getUserCurrentLocation().then((value) async {
        Marker ownmarker = Marker(
          markerId: const MarkerId("1"),
          position: LatLng(value.latitude, value.longitude),
          infoWindow: const InfoWindow(
            title: 'My Current Location',
          ),
        );

        mapController.markersDoner.add(ownmarker);
        mapController.markersOwn.add(ownmarker);
        mapController.markersAmbulance.add(ownmarker);

        CameraPosition cameraPosition = CameraPosition(
          target: LatLng(value.latitude, value.longitude),
          zoom: 14,
        );

        mapController.kGoogle = cameraPosition;
// for donnerController
        mapController.gmcDonerController =
            await mapController.donercontroller.future;
        mapController.gmcDonerController!
            .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
        //  for ambulance
        mapController.gmcambulanceContoller =
            await mapController.ambulancecontroller.future;
        mapController.gmcambulanceContoller!
            .animateCamera(CameraUpdate.newCameraPosition(cameraPosition));
        task.value = true;
      });
    }
    Stream<Position> temp = Geolocator.getPositionStream();
    temp.listen((event) {
      mapController.kGoogle = CameraPosition(
        target: LatLng(event.latitude, event.longitude),
        zoom: 14,
      );
      Marker ownmarker = Marker(
        markerId: const MarkerId("1"),
        position: LatLng(event.latitude, event.longitude),
        infoWindow: const InfoWindow(
          title: 'My Current Location',
        ),
      );
      mapController.markersOwn.add(ownmarker);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
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
                  initialCameraPosition: mapController.kGoogle,
                  mapType: MapType.normal,
                  myLocationEnabled: true,
                  compassEnabled: false,
                  mapToolbarEnabled: false,
                  zoomControlsEnabled: false,
                  myLocationButtonEnabled: false,
                  onMapCreated: (GoogleMapController controller) {
                    if (!mapController.donercontroller.isCompleted) {
                      mapController.donercontroller.complete(controller);
                    }
                  },
                  markers: Set<Marker>.of(mapController.markersDoner),
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
    );
  }
}
