// ignore_for_file: file_names

import 'package:donercall/controller/mapcontroller.dart';
import 'package:donercall/helper/callingname.dart';
import 'package:donercall/helper/toast.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

import '../service/makephonecall.dart';

class DonerController {
  RxString bloodgropeselected = 'AB+'.obs;
  CollectionReference users =
      FirebaseFirestore.instance.collection(CallingName.user_collectionName);
  MapController mapController = MapController();

  donerList() {
    mapController.markersDoner.clear();
    mapController.markersDoner.bindStream(donerListget());
  }

  Stream<List<Marker>> donerListget() => users
          .where(CallingName.bloodgrope,
              isEqualTo: bloodgropeselected.value.toUpperCase())
          .snapshots()
          .asyncMap((event) {
        List<Marker> values = [];
        if (event.docs.isNotEmpty) {
          for (var element in event.docs) {
            var loation = element.get(CallingName.location);
            values.add(Marker(
              markerId: MarkerId(
                element.get(CallingName.user_id),
              ),
              icon: mapController.customIcon,
              position: LatLng(loation[0], loation[1]),
              infoWindow: InfoWindow(
                title: element.get(CallingName.name),
                snippet:
                    " ${element.get(CallingName.bloodgrope) + '  Click to make a phonecall'}",
                onTap: () async {
                  await launchPhoneCall(element.get(CallingName.mobile));
                },
              ),
            ));
          }
        } else {
          showToast(showMessage: 'No doner found for you');
        }
        values.addAll(mapController.markersOwn);
        return values;
      });
}
