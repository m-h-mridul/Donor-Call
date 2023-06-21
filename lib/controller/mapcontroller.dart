// ignore_for_file: unused_field, empty_catches

import 'dart:async';
import 'package:donercall/helper/toast.dart';
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

  RxBool userMapPermission = false.obs;

  CameraPosition kGoogle = const CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 14.4746,
  );

  RxList<Marker> markersDoner = <Marker>[].obs;
  RxList<Marker> markersAmbulance = <Marker>[].obs;
  RxList<Marker> markersRegistation = <Marker>[].obs;
  RxList<Marker> markersOwn = <Marker>[].obs;

// created method for getting user current location
  Future<Position> getUserCurrentLocation() async {
    await locationPermissionCheak();
    if (userMapPermission.value) {
      return await Geolocator.getCurrentPosition();
    } else {
      toastShowsometimeletter();

      Position position = Position(
          accuracy: 223.4,
          altitude: 334.0,
          heading: 232,
          speed: 23,
          speedAccuracy: 37483,
          longitude: 91.1167,
          latitude: 23.9528,
          // latitude: 23.8103,
          // longitude: 90.4125,
          timestamp: DateTime.now());
      return position;
    }
  }

  // ignore: non_constant_identifier_names
  locationPermissionCheak() async {
    LocationPermission permission = await Geolocator.checkPermission();
    try {
      if (permission == LocationPermission.denied ||
          permission == PermissionStatus.restricted) {
        await Geolocator.requestPermission();
        permission = await Geolocator.checkPermission();
        if (permission == LocationPermission.always) {
          userMapPermission.value = true;
        }
      }
    } catch (e) {}
  }

  late BitmapDescriptor customIcon;
  final String customIconPath =
      'assets/blood.png'; // Path to your custom icon image

  Future<void> loadCustomIcon() async {
    ByteData customIconBytes = await rootBundle.load(customIconPath);
    var data = customIconBytes.buffer.asUint8List(
        customIconBytes.offsetInBytes, customIconBytes.lengthInBytes);
    customIcon = BitmapDescriptor.fromBytes(data, size: const Size(16, 16));
  }

  void toastShowsometimeletter() async {
    await Future.delayed(const Duration(seconds: 5));
    showToast(showMessage: "Please give permission to location");
  }
}
