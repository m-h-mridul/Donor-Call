// // ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors, must_be_immutable, file_names

// import 'package:donercall/helper/appcolor.dart';

// import 'package:donercall/helper/validation.dart';

// import 'package:donercall/screen/home.dart';
// import 'package:donercall/controller/logincontroller.dart';
// import 'package:donercall/model/model_Userinformation.dart';
// import 'package:donercall/helper/stroage/stroage.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_progress_hud/flutter_progress_hud.dart';
// import 'package:get/get_instance/src/extension_instance.dart';
// import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
// import 'package:get/route_manager.dart';
// import 'package:donercall/helper/Textstyle.dart';
// import 'package:donercall/helper/media_query.dart';
// import '../forgetui.dart';

// class Login extends StatelessWidget {
//   Login({Key? key}) : super(key: key);
//   static const name = '/Login';
// //**
// //**variable */
// // */
//   TextEditingController email = TextEditingController();
//   TextEditingController password = TextEditingController();
//   final fromkey = GlobalKey<FormState>();
//   LoginController loginController = Get.put(LoginController());
//   Stroage memory = Stroage();
//   @override
//   Widget build(BuildContext context) {
//     return SafeArea(
//       child: Scaffold(
//         body: ProgressHUD(
//           child: Builder(builder: (context) {
//             return SingleChildScrollView(
//               child: Form(
//                 key: fromkey,
//                 child: Padding(
//                   padding: EdgeInsets.symmetric(
//                     horizontal: MediaQuerypage.safeBlockHorizontal! * 3,
//                     vertical: MediaQuerypage.padding!.vertical,
//                   ),
//                   child: Column(
//                     mainAxisAlignment: MainAxisAlignment.start,
//                     crossAxisAlignment: CrossAxisAlignment.center,
//                     children: [
//                       Image(
//                         image: AssetImage('assets/login.png'),
//                       ),
//                       SizedBox(
//                         height: MediaQuerypage.screenHeight! * 0.1,
//                       ),
//                       TextFormField(
//                         style: TextStyleManger.black18,
//                         controller: email,
//                         textInputAction: TextInputAction.next,
//                         validator: (_) {
//                           Validation.emailvalidation(password.text.toString());
//                           return null;
//                         },
//                         decoration: InputDecoration(
//                             border: OutlineInputBorder(
//                               borderSide: BorderSide.none,
//                               borderRadius: BorderRadius.circular(
//                                   MediaQuerypage.pixel! * 6),
//                             ),
//                             filled: true,
//                             fillColor: AppColor.grey_textFiled,
//                             prefixIcon: Icon(
//                               Icons.mail_outline,
//                               color: AppColor.red_appcolor,
//                             ),
//                             hintText: 'Email'),
//                       ),
//                       SizedBox(
//                         height: MediaQuerypage.screenHeight! * 0.03,
//                       ),
//                       Obx(
//                         () => TextFormField(
//                           controller: password,
//                           style: TextStyleManger.black18,
//                           textInputAction: TextInputAction.done,
//                           validator: (_) {
//                             Validation.passwordvalidation(
//                                 password.text.toString());
//                             return null;
//                           },
//                           obscureText: loginController.pass_view.value,
//                           decoration: InputDecoration(
//                               border: OutlineInputBorder(
//                                 borderSide: BorderSide.none,
//                                 borderRadius: BorderRadius.circular(
//                                     MediaQuerypage.pixel! * 6),
//                               ),
//                               prefixIcon: Icon(
//                                 Icons.lock,
//                                 color: AppColor.red_appcolor,
//                               ),
//                               suffixIcon: IconButton(
//                                 onPressed: () {
//                                   loginController.viewchange_pass();
//                                 },
//                                 icon: !loginController.pass_view.value
//                                     ? Icon(
//                                         Icons.remove_red_eye,
//                                       )
//                                     : Icon(
//                                         Icons.visibility_off,
//                                       ),
//                               ),
//                               filled: true,
//                               fillColor: AppColor.grey_textFiled,
//                               hintText: 'Password length must be 6 '),
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuerypage.smallSizeHeight! * 10,
//                       ),
//                       //**logiin button  */
//                       InkWell(
//                         onTap: () async {
//                           if (fromkey.currentState!.validate()) {
//                             FocusScope.of(context).unfocus();
//                             final progress = ProgressHUD.of(context);
//                             progress!.show();
//                             UserInformation user = UserInformation(
//                                 email: email.text.toString(),
//                                 password: password.text.toString());
//                             bool ans = await loginController.login(user);
//                             if (fromkey.currentState!.validate() && ans) {
//                               memory.setUserLogin(UserInformation.userId);
//                               progress.dismiss();
//                               Get.offAllNamed(Home.name);
//                             } else {
//                               progress.dismiss();
//                               loginController.wrongpassword.value = '';
//                             }
//                           }
//                         },
//                         child: Container(
//                           alignment: Alignment.center,
//                           child: Text('Log-in',
//                               style: TextStyleManger.whitebold18),
//                           width: MediaQuerypage.screenWidth,
//                           height: MediaQuerypage.screenHeight! * 0.06,
//                           decoration: BoxDecoration(
//                               color: AppColor.red_appcolor,
//                               borderRadius:
//                                   BorderRadius.all(Radius.circular(10))),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.all(
//                             MediaQuerypage.safeBlockVertical! * 2),
//                         child: TextButton(
//                           onPressed: () {
//                             Get.toNamed(ForgetPasswordUI.name);
//                           },
//                           child: Text(
//                             'Forget Password',
//                             style: TextStyleManger.redbold18,
//                           ),
//                         ),
//                       ),
//                       SizedBox(
//                         height: MediaQuerypage.screenHeight! * 0.1,
//                       ),
//                       Center(
//                         child: Row(
//                           mainAxisAlignment: MainAxisAlignment.center,
//                           children: [
//                             Text('Don’t have an account?  '),
//                             Text(
//                               '  Register Now.',
//                               style: TextStyle(color: AppColor.red_appcolor),
//                             ),
//                           ],
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             );
//           }),
//         ),
//       ),
//     );
//   }
// }
