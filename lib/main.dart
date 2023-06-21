// ignore_for_file: prefer_const_constructors, unused_element

import 'package:firebase_core/firebase_core.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/route_manager.dart';
import 'package:donercall/helper/splash_screen.dart';
import 'helper/routes/approute.dart';

Future<void> _firebasemessageBackground(RemoteMessage remoteMessage) async {
  if (kDebugMode) {
    print("Handleing thebackground ground message");
  }
}

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  await FirebaseMessaging.instance.getInitialMessage();
  FirebaseMessaging.onBackgroundMessage(_firebasemessageBackground);

  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      //theme: ThemeData(primarySwatch: Colors.grey),
      home: SplashScreen(),
      getPages: Approutes.route,
    );
  }
}
