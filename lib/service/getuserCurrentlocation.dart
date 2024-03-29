// ignore_for_file: file_names, unrelated_type_equality_checks

import 'dart:async';

import 'package:donercall/controller/mapcontroller.dart';
import 'package:geolocator/geolocator.dart'
    show Geolocator, LocationPermission, Position;
import 'package:permission_handler/permission_handler.dart';

MapController _mapController = MapController();

Position position = Position(
    accuracy: 223.4,
    altitude: 334.0,
    heading: 232,
    speed: 23,
    speedAccuracy: 37483,
    longitude: 91.1167,
    latitude: 23.9528,
    timestamp: DateTime.now());

Future<Position> getUserCurrentLocation() async {
  if (_mapController.userMapPermission.value) {
    position = await Geolocator.getCurrentPosition();
    _mapController.userMapPermission.value = true;
  }
  return position;
}

locationPermissionCheak() async {
  LocationPermission permission = await Geolocator.checkPermission();
  try {
    if (permission == LocationPermission.always ||
        permission == LocationPermission.whileInUse) {
      _mapController.userMapPermission.value = true;
    } else if (permission == LocationPermission.denied ||
        permission == PermissionStatus.restricted) {
      await Geolocator.requestPermission();
      permission = await Geolocator.checkPermission();
      if (permission == LocationPermission.always ||
          permission == LocationPermission.whileInUse) {
        _mapController.userMapPermission.value = true;
      } else {
        _mapController.toastShowsometimeletter();
      }
    } else {
      _mapController.toastShowsometimeletter();
    }
  } catch (e) {
    throw Error();
  }
}
