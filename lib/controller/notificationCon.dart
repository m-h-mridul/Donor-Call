// import 'package:cloud_firestore/cloud_firestore.dart';
// import 'package:firebase_messaging/firebase_messaging.dart';
// import 'package:flutter/foundation.dart';
// import 'package:flutter_local_notifications/flutter_local_notifications.dart';
// import 'package:get/get_rx/get_rx.dart';

// class NotificationController {
//   RxString token = "".obs;
//   void requestPermission() async {
//     FirebaseMessaging messaging = FirebaseMessaging.instance;
//     NotificationSettings settings = await messaging.requestPermission(
//         alert: true,
//         announcement: false,
//         badge: true,
//         carPlay: false,
//         criticalAlert: false,
//         provisional: false,
//         sound: true);

//     if (settings.authorizationStatus == AuthorizationStatus.authorized) {
//       if (kDebugMode) {
//         print('User granted permission');
//       }
//     } else if (settings.authorizationStatus ==
//         AuthorizationStatus.provisional) {
//       if (kDebugMode) {
//         print('User granted provisional permission');
//       }
//     } else {
//       if (kDebugMode) {
//         print('User declined or has not accepted permission');
//       }
//     }
//   }

//   void getToken(String userUid) async {
//     await FirebaseMessaging.instance.getToken().then((token) async {
//       await FirebaseFirestore.instance.collection("user").doc(userUid).set({
//         'token': token,
//       });
//     });
//   }

//   initInfo() {
//     var androidInitialize =
//         const AndroidInitializationSettings('@mipmap/ic_launcher');
//     var iOSInitialize = const IOSInitializationSettings();
//     var initializationsSettings =
//         InitializationSettings(android: androidInitialize, iOS: iOSInitialize);
//     flutterLocalNotificationsPlugin.initialize(initializationsSettings,
//         onSelectNotification: (String? payload) async {
//       try {
//         if (payload != null && payload.isNotEmpty) {
//         } else {}

//         // ignore: empty_catches
//       } catch (e) {}
//       return;
//     });

//     FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
//       print("...........ConMessage................");
//       print(
//           "onMessage: ${message.notification?.title}/${message.notification?.body}");

//       BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
//         message.notification!.body.toString(),
//         htmlFormatBigText: true,
//         contentTitle: message.notification!.title.toString(),
//         htmlFormatContentTitle: true,
//       );
//       AndroidNotificationDetails androidPlatformChannelSpecifics =
//           AndroidNotificationDetails(
//         'dbfood', 'dbfood', importance: Importance.high,
//         styleInformation: bigTextStyleInformation, priority: Priority.high,
//         playSound: true,
//         // sound:
//       );
//       NotificationDetails platformChannelSpecifics = NotificationDetails(
//           android: androidPlatformChannelSpecifics,
//           iOS: const IOSNotificationDetails()); 
//       await flutterLocalNotificationsPlugin.show(
//           0,
//           message.notification?.title.toString(),
//           message.notification?.body.toString(),
//           platformChannelSpecifics,
//           payload: message.data['title']);
//     });
//   }
// }
