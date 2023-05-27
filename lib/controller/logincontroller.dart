// // ignore_for_file: unused_local_variable, non_constant_identifier_names

// import 'package:donercall/helper/toast.dart';
// import 'package:donercall/model/model_Userinformation.dart';
// import 'package:donercall/helper/stroage/stroage.dart';

// import 'package:firebase_auth/firebase_auth.dart';
// import 'package:get/state_manager.dart';

// import '../helper/validation.dart';

// class LoginController extends GetxController {
//   RxBool pass_view = true.obs;
//   RxString wrongpassword = ''.obs;
//   Stroage memory = Stroage();
//   viewchange_pass() {
//     pass_view.value = !pass_view.value;
//   }

//   String errors = '';
//   login(UserInformation user) async {
//     try {
//       UserCredential userCredential = await FirebaseAuth.instance
//           .signInWithEmailAndPassword(
//               email: user.email!, password: user.password!);
//       UserInformation.userId = userCredential.user!.uid;
//       await memory.setUserLogin(UserInformation.userId);
//       return true;
//     } on FirebaseAuthException catch (e) {
//       errors = e.code;
//       errorShowToast(message: errors);
//       Validation.emailvalidation(errors);
//       Validation.passwordvalidation(errors);
//       return false;
//     }
//   }
// }
