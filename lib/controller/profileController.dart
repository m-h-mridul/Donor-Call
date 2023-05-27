// ignore_for_file: unused_local_variable, file_names

import 'package:donercall/helper/callingname.dart';
import 'package:donercall/model/userinformation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:intl/intl.dart';
import 'package:url_launcher/url_launcher.dart';
import '../model/UserLocation.dart';
import 'dart:async';

class ProfileController {
  Rx<UserInformation> userInfromation = UserInformation().obs;
  RxString dpUrl = ''.obs;
  RxString nidUrl = ''.obs;
  FirebaseStorage storage = FirebaseStorage.instance;
  RxBool dataloadsuccesfull = false.obs;

  late UserLocation userLocation;
  List<Marker> marker = [
    Marker(
        markerId: MarkerId(UserInformation.userId),
        position: const LatLng(23.767562, 90.367156),
        infoWindow: InfoWindow(title: UserInformation.name))
  ];

  Completer<GoogleMapController> ProfileCecontroller = Completer();

  late final GoogleMapController gmcProfileController;

  Rx<CameraPosition> cameraPosition = const CameraPosition(
    target: LatLng(23.767562, 90.367156),
    zoom: 14,
  ).obs;

  calluserInfomethod() {
    getUserInformatio();
  }

  //**method */
  getUserInformatio() async {
    await loadCustomIcon();
    CollectionReference users =
        FirebaseFirestore.instance.collection(CallingName.user_collectionName);
    DocumentSnapshot<Object?> snapshot =
        await users.doc(UserInformation.userId).get();

    UserInformation.name = snapshot.get(CallingName.name);
    UserInformation.location = snapshot.get(CallingName.location);
    UserInformation.mobile = snapshot.get(CallingName.mobile);
    UserInformation.blood_grope = snapshot.get(CallingName.bloodgrope);
    UserInformation.date =
        snapshot.get(CallingName.donate_time) ?? "yyyy-mm-dd";

    cameraPosition = CameraPosition(
      target:
          LatLng(UserInformation.location![0], UserInformation.location![1]),
      zoom: 14,
    ).obs;
    marker.add(
      Marker(
        markerId: MarkerId(UserInformation.userId),
        position:
            LatLng(UserInformation.location![0], UserInformation.location![1]),
        infoWindow: InfoWindow(title: UserInformation.name),
        
      ),
    );

    gmcProfileController = await ProfileCecontroller.future;

    gmcProfileController
        .animateCamera(CameraUpdate.newCameraPosition(cameraPosition.value));

    // List<Placemark> placemarks = await placemarkFromCoordinates(
    //     UserInformation.location![0], UserInformation.location![1]);
    // Placemark place = placemarks[0]; // Get the first result
    // userLocation = UserLocation(
    //     address: place.name!,
    //     city: place.locality!,
    //     state: place.administrativeArea!,
    //     country: place.country!,
    //     postalCode: place.postalCode!);

    dataloadsuccesfull.value = true;
  }

  String addDaysToDate(String dateStr, int daysToAdd) {
    final dateFormat = DateFormat('yyyy-MM-dd');
    final date = dateFormat.parse(dateStr);
    final newDate = date.add(Duration(days: daysToAdd));
    return dateFormat.format(newDate);
  }

  ///**user call button which go to moble call */
  Future<void> _makePhoneCall(String phoneNumber) async {
    final Uri launchUri = Uri(
      scheme: 'tel',
      path: phoneNumber,
    );
    await launch(launchUri.toString());
  }

  late BitmapDescriptor customIcon;
  final String customIconPath =
      'assets/blood.png'; // Path to your custom icon image

  Future<void> loadCustomIcon() async {
    ByteData customIconBytes = await rootBundle.load(customIconPath);
    var data = customIconBytes.buffer.asUint8List(
        customIconBytes.offsetInBytes, customIconBytes.lengthInBytes);
    customIcon = BitmapDescriptor.fromBytes(data);
  }
}
