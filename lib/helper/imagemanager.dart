// ignore_for_file: unused_element, unused_local_variable

import 'dart:io';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter/foundation.dart';
import 'package:get/get_rx/src/rx_types/rx_types.dart';
import 'package:get/route_manager.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import 'callingname.dart';

class ImageManager {
  var imagepath = ''.obs;
  RxString downloadUrl = ''.obs;
  //
  openGallery() async {
    XFile? image = await ImagePicker().pickImage(source: ImageSource.gallery);
    imagepath.value = image!.path;
  }

  // Future<bool> uploadImage() async {
  //   try {
  //     final firebaseStorage = FirebaseStorage.instance;
  //     await Permission.photos.request();
  //     var permissionStatus = await Permission.photos.status;
  //     if (permissionStatus.isGranted) {
  //       if (imagepath != null) {
  //         var snapshot = await firebaseStorage
  //             .ref()
  //             .child(
  //                 '${CallingName.bloodbankimage}${imagepath.value.toString().split('/').last}/')
  //             .putFile(File(imagepath.value))
  //             .whenComplete(() => print('image upload'));
  //         downloadUrl.value = await snapshot.ref.getDownloadURL();
  //       } else {
  //         if (kDebugMode) {
  //           print('No Image Path Received');
  //         }
  //       }
  //     } else {
  //       if (kDebugMode) {
  //         print('Permission not granted. Try Again with permission access');
  //       }
  //       Get.back();
  //     }
  //     return true;
  //   } catch (e) {
  //     if (kDebugMode) {
  //       print('Errors find image sent');
  //       print(e);
  //     }
      
  //     return false;
  //   }
  // }
}
