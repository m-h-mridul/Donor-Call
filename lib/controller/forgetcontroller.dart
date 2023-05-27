import 'package:firebase_auth/firebase_auth.dart';

class ForgetController {
  onclick(String email) async {
    await FirebaseAuth.instance.sendPasswordResetEmail(email: email);
  }
}
