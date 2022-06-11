import 'dart:html';

import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  Future<void> authenticateWithMobileNumber(String mobileNumber) async {
    try {
      final result = await FirebaseAuth.instance.signInWithPhoneNumber(mobileNumber);
      final credential = await result.confirm(result.verificationId);
      print(credential);
    } catch (e) {}
  }
}
