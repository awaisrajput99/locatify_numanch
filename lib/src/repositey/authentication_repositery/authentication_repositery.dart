import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:locatify/src/repositey/exceptions/signup_email_password_failure.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();

  final _auth = FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  @override
  void onReady() {
    firebaseUser = _auth.currentUser as Rx<User?>;
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser, _setInitialScreen);
  }

  _setInitialScreen(User? user) {
user == null? Get.offNamed("/welcome") : Get.offNamed("/homeScreen");
  }

  Future<void> createUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value != null? Get.offNamed("/homeScreen") : Get.offNamed("/welcome");
    } on FirebaseAuthException catch(e){
      final ex = SignupWithEmailPasswordFailure.code(e.code);
      print('FREBASE AUTH EXCEPITON ${ex.message}');
      throw ex;
    }catch(_){
     const ex = SignupWithEmailPasswordFailure();
     print('EXCEPTION - ${ex.message}');
     throw ex;
    }
  }
  Future<void> loginUserWithEmailAndPassword(String email, String password) async {
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);

    } on FirebaseAuthException catch(e){
    }catch(_){

    }
  }
  Future<void> logoutUser() async => await _auth.signOut();

}
