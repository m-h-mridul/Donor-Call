// ignore_for_file: unused_field, empty_catches

import 'dart:async';
import 'package:donercall/helper/toast.dart';
import 'package:flutter/services.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'dart:ui' as ui;

class MapController {
  static final MapController instance = MapController._();
  MapController._();
  factory MapController() {
    return instance;
  }

  CameraPosition kGoogle = const CameraPosition(
    target: LatLng(23.8103, 90.4125),
    zoom: 14.4746,
  );

  StreamController<Position> positionStreamController =
      StreamController<Position>();
  Stream<Position> get positionStream => positionStreamController.stream;

  Completer<GoogleMapController> donercontroller = Completer();
  Completer<GoogleMapController> ambulancecontroller = Completer();
  Completer<GoogleMapController> registationcecontroller = Completer();

  GoogleMapController? gmcDonerController;
  GoogleMapController? gmcambulanceContoller;
  GoogleMapController? gmcregistationContoller;

  RxBool userMapPermission = false.obs;

  RxList<Marker> markersDoner = <Marker>[].obs;
  RxList<Marker> markersAmbulance = <Marker>[].obs;
  RxList<Marker> markersRegistation = <Marker>[].obs;
  Rx<Marker> markersOwn = const Marker(
    markerId: MarkerId("1"),
    position: LatLng(23.8103, 90.4125),
    infoWindow: InfoWindow(
      title: 'My Current Location',
    ),
  ).obs;

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

  late BitmapDescriptor customIcon;
  final String customIconPath = 'assets/blood.png';

  Future<void> loadCustomIcon() async {
    ByteData data = await rootBundle.load(customIconPath);
    ui.Codec codec = await ui.instantiateImageCodec(data.buffer.asUint8List(),
        targetWidth: 55);
    ui.FrameInfo fi = await codec.getNextFrame();
    var markerIcon =
        (await fi.image.toByteData(format: ui.ImageByteFormat.png))!
            .buffer
            .asUint8List();
    customIcon = BitmapDescriptor.fromBytes(markerIcon);
  }

  void toastShowsometimeletter() async {
    await Future.delayed(const Duration(seconds: 5));
    showToast(showMessage: "Please give permission to location");
  }
}

