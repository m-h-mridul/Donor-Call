import 'package:donercall/screen/registation/Registation.dart';
import 'package:donercall/helper/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../screen/home.dart';
import '../../screen/emergency/helpline/helpline.dart';
import '../../screen/notification/notfificationUI.dart';
import '../../screen/pageviwer/pageviewr.dart';

class Approutes {
  static final route = [
    GetPage(
      name: Helpline.name,
      page: () => Helpline(),
    ),
    // GetPage(
    //   name: Login.name,
    //   page: () => Login(),
    // ),
    GetPage(
      name: Registation.name,
      page: () => Registation(),
    ),
    
    GetPage(
      name: Home.name,
      page: () => Home(),
    ),
    GetPage(
      name: Pagevier.name,
      page: () => Pagevier(),
    ),
    GetPage(
      name: SplashScreen.name,
      page: () => SplashScreen(),
    ),
    // GetPage(
    //   name: AmbulanceUI.name,
    //   page: () => const AmbulanceUI(),
    // ),
    
    GetPage(
      name: NotificationUi.name,
      page: () => const NotificationUi(),
    ),
  ];
}
