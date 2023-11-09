import 'package:firebase_auth/firebase_auth.dart';
class AuthService{
  static final _firebaseAuth = FirebaseAuth.instance;

  static String verifyId = "";
  // to send an otp to the user
  static Future sendOtp({
    required int phone,
    required Function errorStep,
    required Function nextStep,
}) async{
    await _firebaseAuth.verifyPhoneNumber(
      timeout: Duration(seconds:60),
      phoneNumber: "+91$phone",
      verificationCompleted: (phoneAuthCredential) async{
       return ;
    }, verificationFailed: (error) async{
      return;
    }, codeSent: (verificationId, forceResendingToken) async{
        verifyId = verificationId;
        nextStep();
    }, codeAutoRetrievalTimeout: (verificationId) async{
      return;
    },
    ).onError((error, stackTrace){
      errorStep();
    });
  }
}