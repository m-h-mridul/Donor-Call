// import 'package:donercall/helper/Textstyle.dart';
// import 'package:donercall/helper/media_query.dart';
// import 'package:flutter/material.dart';
// import 'package:get/route_manager.dart';
// import 'package:url_launcher/url_launcher.dart';
// import '../helper/appcolor.dart';
// import '__ambulancebookingui.dart';

// class AmbulanceUI extends StatelessWidget {
//   static const name = '/AmbulanceUI';
//   const AmbulanceUI({Key? key}) : super(key: key);

//   @override
//   Widget build(BuildContext context) {
//     ///**user call button which go to moble call */
//     Future<void> _makePhoneCall(String phoneNumber) async {
//       // Use `Uri` to ensure that `phoneNumber` is properly URL-encoded.
//       // Just using 'tel:$phoneNumber' would create invalid URLs in some cases,
//       // such as spaces in the input, which would cause `launch` to fail on some
//       // platforms.
//       final Uri launchUri = Uri(
//         scheme: 'tel',
//         path: phoneNumber,
//       );
//       await launch(launchUri.toString());
//     }

//     return SafeArea(
//       child: Scaffold(
//         appBar: AppBar(
//           backgroundColor: AppColor.white,
//           elevation: 1,
//           centerTitle: true,
//           title: const Text("Ambulanes Call & Booking"),
//           leading: IconButton(
//             onPressed: () {
//               Get.back();
//             },
//             icon: const Icon(Icons.arrow_back_ios_new),
//           ),
//         ),
//         body: Padding(
//           padding: EdgeInsets.symmetric(
//               vertical: MediaQuerypage.safeBlockVertical! * 1.5,
//               horizontal: MediaQuerypage.safeBlockHorizontal! * 2),
//           child: SingleChildScrollView(
//             child: Column(
//               // mainAxisAlignment: MainAxisAlignment.start,
//               // crossAxisAlignment: CrossAxisAlignment.start,
//               children: [
//                 Padding(
//                   padding: EdgeInsets.symmetric(
//                     vertical: MediaQuerypage.safeBlockVertical! * 1,
//                   ),
//                   child: const Image(
//                     // color: AppColor.red_appcolor,
//                     image: AssetImage('assets/Ambulance (2).png'),
//                   ),
//                 ),
//                 Text(
//                   'Need An Ambulane Services?',
//                   style: TextStyleManger.bold20,
//                   textAlign: TextAlign.left,
//                 ),
//                 Text(
//                   '''We provide all types of ambulance service in Bangladesh. We have 
//                 * ICU Ambulance
//                 * Hiace *Amblulance
//                 * Freezer van 
//     Office Location: West Panthapath, Dhaka-1215''',
//                   style: TextStyleManger.black16,
//                 ),
//                 Text(
//                   '''আমাদের ফ্রিজার এ্যাম্বুলেন্স সমগ্র বাংলাদেশব্যাপী সেবা দিয়ে থাকে। রাত-দিন ২৪ ঘন্টা সেবায় নিয়োজিত। এছাড়া দেশের যেকোনো প্রান্ত থেকেই আমাদের এই সেবা দেওয়া সম্ভব।''',
//                   style: TextStyleManger.black16,
//                 ),
//                 // Divider(),
//                 Card(
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         MediaQuerypage.pixel! * 3), // if you need this
//                     side: BorderSide(
//                       color: Colors.grey.withOpacity(0.8),
//                       width: 1.5,
//                     ),
//                   ),
//                   child: ExpansionTile(
//                     leading: Image(
//                         fit: BoxFit.fill,
//                         height: MediaQuerypage.screenHeight! * 0.08,
//                         width: MediaQuerypage.screenWidth! * .2,
//                         image: const AssetImage(
//                             'assets/best-icu-ambulance-service-dhaka.png')),
//                     title: Text(
//                       'ICU AMBULANCE',
//                       style: TextStyleManger.black18,
//                     ),
//                     subtitle: Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             Get.toNamed(AmbulnceBookingUI.name);
//                           },
//                           style: ElevatedButton.styleFrom(
//                             textStyle: TextStyleManger.whitebold16,
//                             primary: Colors.black,
//                           ),
//                           child: Text('Booking',
//                               style: TextStyleManger.whitebold16),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               _makePhoneCall('01920-011311');
//                             },
//                             child: Text(
//                               'Call',
//                               style: TextStyleManger.whitebold16,
//                             ),
//                             style: ElevatedButton.styleFrom(
//                                 primary: AppColor.red_appcolor,
//                                 textStyle: TextStyleManger.whitebold16),
//                           ),
//                         ),
//                       ],
//                     ),
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           '''সাধারনত আই.সি.ইউ এ্যাম্বুলেন্স সব ধরনের প্রয়োজনীয় সেবা দিয়ে থাকে সেই সব রোগীদের যারা জীবনাশঙ্কাপূর্ন ব্যাধিতে আক্রান্ত অথবা আঘাতপ্রাপ্ত, যে অবস্থাগুলোতে প্রয়োজন তাৎক্ষণিক সেবা, জীবন রক্ষাকারী যন্ত্রসমুহের দ্বারা নিবিড় পর্যবেক্ষণ এবং রোগীর স্বাভাবিক শারীরবৃত্তীয় কার্যক্রম পরিচালনার জন্য জীবনরক্ষাকারী ঔষধাদি প্রয়োজন।
//                   আমাদের আই.সি.ইউ এ্যাম্বুলেন্সে রোগীদের সেবায় উচ্চতর প্রশিক্ষণপ্রাপ্ত চিকিৎসক, সেবিকা এবং শ্বাসপ্রশ্বাস কার্যক্রম সম্পর্কে অভিজ্ঞ থেরাপিস্টদের দ্বারা যারা সংকটপূর্ন অবস্থায় সেবা দানের ব্যাবস্থা রাখা হয়েছে।''',
//                           style: TextStyleManger.black16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Card(
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         MediaQuerypage.pixel! * 3), // if you need this
//                     side: BorderSide(
//                       color: Colors.grey.withOpacity(0.8),
//                       width: 1.5,
//                     ),
//                   ),
//                   child: ExpansionTile(
//                     leading: Image(
//                         fit: BoxFit.fill,
//                         height: MediaQuerypage.screenHeight! * 0.08,
//                         width: MediaQuerypage.screenWidth! * .2,
//                         image: const AssetImage('assets/hiace-ambulance.png')),
//                     title: Text(
//                       'HIACE AMBULANCE',
//                       style: TextStyleManger.black18,
//                     ),
//                     subtitle: Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             Get.toNamed(AmbulnceBookingUI.name);
//                           },
//                           child: Text('Booking',
//                               style: TextStyleManger.whitebold16),
//                           style: ElevatedButton.styleFrom(
//                             textStyle: TextStyleManger.whitebold16,
//                             primary: Colors.black,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               _makePhoneCall('01920-011311');
//                             },
//                             child: Text(
//                               'Call',
//                               style: TextStyleManger.whitebold16,
//                             ),
//                             style: ElevatedButton.styleFrom(
//                                 primary: AppColor.red_appcolor,
//                                 textStyle: TextStyleManger.whitebold16),
//                           ),
//                         ),
//                       ],
//                     ),
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           '''সমগ্র বাংলাদেশব্যাপী আমরা আমাদের এ্যাম্বুলেন্স সেবা দিয়ে থাকি। আমাদের রয়েছে আইসিইউ এ্যাম্বুলেন্স, ফ্রিজার ভ্যান, হাইএস এ্যাম্বুলেন্স সার্ভিস। আমাদের সকল এ্যাম্বুলেন্স সেবায় এসি রয়েছে। আপনি আমাদের এসি নন এসি উভয় এ্যাম্বুলেন্স সার্ভিস নিতে পারেন।''',
//                           style: TextStyleManger.black16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//                 Card(
//                   elevation: 0,
//                   shape: RoundedRectangleBorder(
//                     borderRadius: BorderRadius.circular(
//                         MediaQuerypage.pixel! * 3), // if you need this
//                     side: BorderSide(
//                       color: Colors.grey.withOpacity(0.8),
//                       width: 1.5,
//                     ),
//                   ),
//                   child: ExpansionTile(
//                     leading: Image(
//                         fit: BoxFit.fill,
//                         height: MediaQuerypage.screenHeight! * 0.08,
//                         width: MediaQuerypage.screenWidth! * .2,
//                         image: const AssetImage(
//                             'assets/freezer-van-ambulanceservice-dhaka.png')),
//                     title: Text(
//                       'FREEZER VAN',
//                       style: TextStyleManger.black18,
//                     ),
//                     subtitle: Row(
//                       children: [
//                         ElevatedButton(
//                           onPressed: () {
//                             Get.toNamed(AmbulnceBookingUI.name);
//                           },
//                           // ignore: sort_child_properties_last
//                           child: Text('Booking',
//                               style: TextStyleManger.whitebold16),
//                           style: ElevatedButton.styleFrom(
//                             textStyle: TextStyleManger.whitebold16,
//                             primary: Colors.black,
//                           ),
//                         ),
//                         Padding(
//                           padding: const EdgeInsets.only(left: 8.0),
//                           child: ElevatedButton(
//                             onPressed: () {
//                               _makePhoneCall('01920-011311');
//                             },
//                             style: ElevatedButton.styleFrom(
//                                 primary: AppColor.red_appcolor,
//                                 textStyle: TextStyleManger.whitebold16),
//                             child: Text(
//                               'Call',
//                               style: TextStyleManger.whitebold16,
//                             ),
//                           ),
//                         ),
//                       ],
//                     ),
//                     children: <Widget>[
//                       Padding(
//                         padding: const EdgeInsets.all(8.0),
//                         child: Text(
//                           '''মৃত ব্যাক্তিদের এক স্থান হতে অন্যস্থানে স্থানারিত করার জন্য ফ্রিজার ভ্যান ব্যাবহার করা হয়। আমাদের ফ্রিজার ভ্যান সর্বোচ্চ (-১০ ডিগ্রি) সেলসিয়াস তাপমাত্রায় মৃত ব্যাক্তিদের স্থানান্তরিত করা হয়।
//     আমাদের ফ্রিজার ভ্যানে কফিন এর ব্যাবস্থা রয়েছে। এছাড়া আপনি আমাদের ফ্রিজার ভ্যান ব্যাবহার করে এক্ট্রা সময় ধরে লাশ ফ্রিজিং করে রাখতে পারবেন। এরজন্য আপনাকে অবশ্যই প্রতি ঘন্টা সাপেক্ষে ৬০০শত টাকা আলাদা দিতে হবে।''',
//                           style: TextStyleManger.black16,
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ],
//             ),
//           ),
//         ),
//       ),
//     );
//   }
// }
