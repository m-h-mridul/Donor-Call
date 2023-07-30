// ignore_for_file: avoid_returning_null_for_void, file_names

import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:donercall/model/userinformation.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:get/get_rx/get_rx.dart';

import '../model/notificationmoel.dart';

RxList<NotificationModel> _notificationlist = RxList<NotificationModel>();

class NotificationController {
  final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      FlutterLocalNotificationsPlugin();
  RxString usertoken = "".obs;

  RxList<NotificationModel> get notfiactionlist => _notificationlist;

  static instance() {
    return NotificationController();
  }

  callRequiremethodforNoti() async {
    requestPermission();
    getToken(UserInformation.userId);
    await initInfo();
  }

  void requestPermission() async {
    FirebaseMessaging messaging = FirebaseMessaging.instance;
    NotificationSettings settings = await messaging.requestPermission(
        alert: true,
        announcement: false,
        badge: true,
        carPlay: false,
        criticalAlert: false,
        provisional: false,
        sound: true);

    if (settings.authorizationStatus == AuthorizationStatus.authorized) {
      if (kDebugMode) {
        print('User granted permission');
      }
    } else if (settings.authorizationStatus ==
        AuthorizationStatus.provisional) {
      if (kDebugMode) {
        print('User granted provisional permission');
      }
    } else {
      if (kDebugMode) {
        print('User declined or has not accepted permission');
      }
    }
  }

  void getToken(String userUid) async {
    await FirebaseMessaging.instance.getToken().then((token) async {
      usertoken.value = token!;
      await FirebaseFirestore.instance.collection("users").doc(userUid).update({
        'token': token,
      });
    });
  }

  void firabaseInit() {
    initInfo();
  }

  initInfo() async {
    var androidInitialize =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    var iOSInitialize = const DarwinInitializationSettings();
    var initializationsSettings =
        InitializationSettings(android: androidInitialize, iOS: iOSInitialize);

    await flutterLocalNotificationsPlugin.initialize(
      initializationsSettings,
      // onDidReceiveNotificationResponse: ((details) {
      //   // for redirect to the app any page
      // }),
      // onDidReceiveBackgroundNotificationResponse: ((details) async => null),
    );

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      BigTextStyleInformation bigTextStyleInformation = BigTextStyleInformation(
        message.notification!.body.toString(),
        htmlFormatBigText: true,
        contentTitle: message.notification!.title.toString(),
        htmlFormatContentTitle: true,
      );
      AndroidNotificationDetails androidPlatformChannelSpecifics =
          AndroidNotificationDetails(
        'dbfood', 'dbfood', importance: Importance.high,
        styleInformation: bigTextStyleInformation, priority: Priority.high,
        playSound: true,
        // sound:
      );
      NotificationDetails platformChannelSpecifics = NotificationDetails(
          android: androidPlatformChannelSpecifics,
          iOS: const DarwinNotificationDetails());

      NotificationModel temp = NotificationModel(
          title: message.notification!.title.toString(),
          body: message.notification!.body.toString(),
          payload: message.data.toString());
      _notificationlist.add(temp);
      await flutterLocalNotificationsPlugin.show(
          0,
          message.notification?.title.toString(),
          message.notification?.body.toString(),
          platformChannelSpecifics,
          payload: message.data['title']);
    });
  }
}
