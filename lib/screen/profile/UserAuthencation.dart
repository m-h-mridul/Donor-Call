// ignore_for_file: file_names
// import 'package:donercall/helper/appcolor.dart';

// import 'package:donercall/helper/media_query.dart';
// import 'package:donercall/screen/registation/Registation.dart';
// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';

// import '../../helper/Textstyle.dart';

// class UserAuthencation extends StatelessWidget {
//   UserAuthencation({Key? key}) : super(key: key);
//   static const name = '/home';

//   @override
//   Widget build(BuildContext context) {
//     MediaQuerypage.init(context);
//     return SafeArea(
//       child: Scaffold(
//         body: Padding(
//           padding: const EdgeInsets.all(8.0),
//           child: Column(
//             crossAxisAlignment: CrossAxisAlignment.center,
//             mainAxisAlignment: MainAxisAlignment.center,
//             children: [
//               const Image(
//                 image: AssetImage('assets/Logo.png'),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: MediaQuerypage.safeBlockHorizontal! * 10,
//                     vertical: MediaQuerypage.safeBlockHorizontal! * 5),
//                 child: const Image(
//                   image: AssetImage('assets/home2.png'),
//                 ),
//               ),
//               Padding(
//                 padding: EdgeInsets.symmetric(
//                     horizontal: MediaQuerypage.safeBlockHorizontal! * 10,
//                     vertical: MediaQuerypage.safeBlockHorizontal! * 5),
//                 child: Text(
//                   'You can donate for ones in need and\n request blood if you need.',
//                   textAlign: TextAlign.center,
//                   style: TextStyle(
//                       fontSize: MediaQuerypage.fontsize! * 15,
//                       color: AppColor.grey),
//                 ),
//               ),
//               InkWell(
//                 onTap: () {
//                   // Get.toNamed(Login.name);
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: MediaQuerypage.screenWidth,
//                   height: MediaQuerypage.screenHeight! * 0.06,
//                   decoration: BoxDecoration(
//                       color: Colors.white,
//                       border: Border.all(
//                         color: AppColor.red_appcolor,
//                       ),
//                       borderRadius:
//                           const BorderRadius.all(Radius.circular(10))),
//                   child: Text('Log-in', style: TextStyleManger.redbold18),
//                 ),
//               ),
//               SizedBox(
//                 height: MediaQuerypage.smallSizeHeight! * 1,
//               ),
//               InkWell(
//                 onTap: () {
//                   Get.toNamed(Registation.name);
//                 },
//                 child: Container(
//                   alignment: Alignment.center,
//                   width: MediaQuerypage.screenWidth,
//                   height: MediaQuerypage.screenHeight! * 0.06,
//                   decoration: BoxDecoration(
//                       color: AppColor.red_appcolor,
//                       borderRadius:
//                           const BorderRadius.all(Radius.circular(10))),
//                   child: Text('register', style: TextStyleManger.whitebold18),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
