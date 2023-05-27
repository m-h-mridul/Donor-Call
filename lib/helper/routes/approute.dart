import 'package:donercall/screen/registation/Registation.dart';
import 'package:donercall/helper/splash_screen.dart';
import 'package:get/get_navigation/get_navigation.dart';
import '../../garbag/_ambulanceui.dart';
import '../../screen/home.dart';
import '../../screen/profile/UserAuthencation.dart';
import '../../garbag/__ambulancebookingui.dart';
import '../../garbag/_hosipitalemergecy.dart';
import '../../screen/notification/notfificationUI.dart';
import '../../garbag/pageviewr.dart';
import '../../screen/login/resetPassword.dart';

class Approutes {
  static final route = [
    GetPage(
      name: HospitalEmergncy.name,
      page: () => const HospitalEmergncy(),
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
      name: ResetPassword.name,
      page: () => const ResetPassword(),
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
      name: AmbulnceBookingUI.name,
      page: () => AmbulnceBookingUI(),
    ),

    GetPage(
      name: NotificationUi.name,
      page: () => const NotificationUi(),
    ),
  ];
}
