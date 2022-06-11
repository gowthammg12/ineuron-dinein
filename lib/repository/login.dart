import 'package:dinein/app_data.dart';
import 'package:firebase_auth/firebase_auth.dart';

class LoginRepository {
  Future<AppData<ConfirmationResult>> generateOtp(String mobileNumber) async {
    try {
      final result = await FirebaseAuth.instance.signInWithPhoneNumber(mobileNumber);
      return AppData(data: result);
      // final credential = await result.confirm(result.verificationId);
      // print(credential);
    } catch (e) {
      return AppData.criticalError();
    }
  }
}
