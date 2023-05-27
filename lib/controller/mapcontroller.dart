// ignore_for_file: unused_field

import 'dart:async';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:permission_handler/permission_handler.dart';

class MapController {
  static final MapController instance = MapController._();

  MapController._();

  factory MapController() {
    return instance;
  }

  Completer<GoogleMapController> donercontroller = Completer();
  Completer<GoogleMapController> ambulancecontroller = Completer();
  Completer<GoogleMapController> registationcecontroller = Completer();

  late final GoogleMapController gmcDonerController;
  late final GoogleMapController gmcambulanceContoller;
  late final GoogleMapController gmcregistationContoller;

  CameraPosition kGoogle = const CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 14.4746,
  );

  RxList<Marker> markersDoner = <Marker>[].obs;
  RxList<Marker> markersAmbulance = <Marker>[].obs;
  RxList<Marker> markersRegistation = <Marker>[].obs;

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await locationPermissionCheak();
    return await Geolocator.getCurrentPosition();
  }

  // ignore: non_constant_identifier_names
  locationPermissionCheak() async {
    bool serviceEnabled;
    LocationPermission permission;

    // Test if location services are enabled.
    serviceEnabled = await Geolocator.isLocationServiceEnabled();
    if (!serviceEnabled) {
      return Future.error('Location services are disabled.');
    } 

    permission = await Geolocator.checkPermission();
    if (permission == LocationPermission.denied) {
      permission = await Geolocator.requestPermission();
      if (permission == LocationPermission.denied) {
        return Future.error('Location permissions are denied');
      }
    }

    if (permission == LocationPermission.deniedForever) {
      return Future.error(
          'Location permissions are permanently denied, we cannot request permissions.');
    }
    if (serviceEnabled) {
      return true;
    } 

    // var permission = await Permission.location.status;

    // if (permission == PermissionStatus.denied ||
    //     permission == PermissionStatus.restricted) {
    //   await Geolocator.requestPermission()
    //       .then((value) {})
    //       .onError((error, stackTrace) async {
    //     await Geolocator.requestPermission();
    //   });
    // }
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
